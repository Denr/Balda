var cur_letter = "";
var cur_id = 0;
var cur_status = "choose_letter";
var status_msg = {
    "choose_letter": "Выберите желаемую букву",
    "choose_place": "Двойным кликом выберите место для буквы",
    "choose_word": "Выберите слово по буквам"
}
var words = ["балда"];
var letters = [];
var score1 = 0;
var score2 = 0;
var newWord = "";
var count = 0;

function get_letter(letter) {
    if (letter != "") {
        cur_letter = letter;
        set_status("choose_place");
    } else {
        cur_letter = "";
        set_status("choose_letter");
    }
}

function set_status(status) {
    cur_status = status;
    $("#msg").html(status_msg[status]);
}
function set_letter(letter_id) {
    var letter = $("#" + letter_id);
    cur_id = parseInt(letter_id, 10);
    var right = $("#" + (cur_id + 1));
    var left = $("#" + (cur_id - 1));
    var top = $("#" + (cur_id - 5));
    var bottom = $("#" + (cur_id + 5));
    if ($(letter).val() == "" && cur_status == "choose_place") {
        if ((top.val() != "" && (cur_id - 5) > 0) || (bottom.val() != "" && (cur_id + 5) < 26) || (right.val() != "" && (cur_id + 1) < 26) || (left.val() != "" && (cur_id - 1) > 0)) {
            $(letter).val(cur_letter);
            set_status("choose_word");
            $("#alphabet").addClass("block");
            cur_letter = "";
        }
        else {
            var status = $("#result");
            status.html("Сюда вставлять нельзя!").css("color", "crimson").slideDown();
            status.html("Сюда вставлять нельзя!").slideUp(3000);
        }
    }
}
function choose_word(letter_id) {
    var letter = $("#" + letter_id);
    if (cur_status == "choose_word" && letter.val() != "") {
        $(letter).removeClass("btn-primary");
        $(letter).addClass("btn-warning");
        letters.push(letter.val());
        $("#word").val(letters.toString().replace(/\s/g, "").replace(/\,/g, ""));
        if (letter.val() != "") {
            letter.addClass("block");
        }
    }
}
function cancel() {
    letters = [];
    for (var i = 1; i < 26; i++) {
        var letter = $("#" + i);
        if (!letter.hasClass("complete")) {
            letter.val("");
        }
        letter.removeClass("btn-warning block");
        letter.addClass("btn-primary");
    }
    $("#word").val("");
    set_status("choose_letter");
    $("#alphabet").removeClass("block");
}
function check_word() {
    var word = $("#word").val();
    var status = $("#result");
    var gamer = $("#gamer");
    var bool = false;
    var bool_end_game = false;
    for (var i = 1; i < 26; i++) {
        if ($("#" + i).val() != "") {
            bool_end_game = true;
        }
        else {
            bool_end_game = false;
        }
    }
    if (bool_end_game) {
        end_game();
    }
    if (word != "") {
        $.get("CheckWord", {word: word}, function (result) {
            if (result == "yes") {
                if ($("#" + cur_id).hasClass("btn-warning")) {
                    for (var i = 1; i < words.length; i++) {
                        if (words[i] == word) {
                            bool = true;
                        }
                        else {
                            bool = false;
                        }
                    }
                    if (!bool) {
                        words.push(word);
                    }
                    if (!bool) {
                        status.html("Слово принято!").css("color", "#449d44").slideDown();
                        status.html("Слово принято!").slideUp(3000);
                        if (gamer.html() == "Игрок 1" && count <= 1) {
                            $("#score1").append("<tr><td>" + word + "</td><td>" + letters.length + "</td></tr>");
                            score1 = (score1 + letters.length);
                            $("#total_score1").html("Итоговый счет: " + score1);
                            $("#gamer").html("Игрок 2");
                        }
                        else if (gamer.html() == "Игрок 2" && count <= 1) {
                            gamer.html("Игрок 1");
                            score2 = (score2 + letters.length);
                            $("#total_score2").html("Итоговый счет: " + score2);
                            $("#score2").append("<tr><td>" + word + "</td><td>" + letters.length + "</td></tr>");
                        }
                        for (var i = 1; i < 26; i++) {
                            var letter = $("#" + i);
                            if (letter.val() != "") {
                                letter.addClass("complete");
                            }
                        }
                    }
                    else {
                        status.html("Такое слово уже есть!").css("color", "crimson").slideDown();
                        status.html("Такое слово уже есть!").slideUp(3000);
                    }
                }
                else {
                    status.html("Обязательно выберите свою букву!").css("color", "crimson").slideDown();
                    status.html("Обязательно выберите свою букву!").slideUp(3000);
                }
            }
            else {
                status.html("Такого слова нет :(").css("color", "crimson").slideDown();
                status.html("Такого слова нет :(").slideUp(3000);
            }
            cancel();
        });
    }
}
function end_game() {
    if (score1 > score2) {
        $(".total_score").html("Выиграл 1 игрок со счетом:" + " " + score1);
    }
    if (score2 > score1) {
        $(".total_score").html("Выиграл 2 игрок со счетом:" + " " + score2);
    }
    if (score1 == score2) {
        $(".total_score").html("Ничья со счетом:" + " " + score2);
    }
}
function new_game() {
    cancel();
    words = [];
    score1 = score2 = 0;
    $(".total_score").html("");
    $("#total_score1").html("");
    $("#total_score2").html("");
    for (var i = 1; i < 26; i++) {
        var letter = $("#" + i);
        letter.val("");
    }
    $("#score1").html("<tr><td>Слово</td><td>Очки</td></tr>");
    $("#score2").html("<tr><td>Слово</td><td>Очки</td></tr>");
    $.get("RandomWord", function (word) {
        newWord = word;
        words.push(newWord);
        for (var i = 11; i < 16; i++) {
            $("#" + i).val(newWord[i - 11]);
        }
    });
}