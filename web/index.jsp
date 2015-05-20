<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <script src="js/jquery-1.11.2.min.js"></script>
    <script src="js/script.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="shortcut icon" href="images/favicon.ico"/>
    <meta charset="UTF-8">
    <title>Балда</title>
</head>
<body>
<h1 align="center">Игра Балда</h1>

<h1 id="random"></h1>

<div align="center"><input type="button" value="Новая игра" class="btn btn-default head_button" onclick="new_game()">
</div>
<br>

<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <h4 align="center">Игрок 1</h4>
            <table class="table-bordered" id="score1">
                <tr>
                    <td>Слово</td>
                    <td>Очки</td>
                </tr>
            </table>
            <h4 align="center" id="total_score1"></h4>

            <div align="center"><input type="button" class="btn btn-danger exit" value="Закончить игру"
                                       onclick="end_game()">
                <h4 class="total_score"></h4>
            </div>
        </div>
        <div class="col-sm-4">
            <table align="center" id="gameForm" class="table-condensed">
                <tr>
                    <td>
                        <input type="button" id="1" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="2" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="3" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="4" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="5" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="button" id="6" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="7" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="8" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="9" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="10" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="button" id="11" class="btn btn-primary btn-lg complete" value="б"
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="12" class="btn btn-primary btn-lg complete" value="а"
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="13" class="btn btn-primary btn-lg complete" value="л"
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="14" class="btn btn-primary btn-lg complete" value="д"
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="15" class="btn btn-primary btn-lg complete" value="а"
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="button" id="16" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="17" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="18" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="19" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="20" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="button" id="21" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="22" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="23" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="24" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                    <td>
                        <input type="button" id="25" class="btn btn-primary btn-lg" value=""
                               ondblclick="set_letter(this.id)"
                               onclick="choose_word(this.id)">
                    </td>
                </tr>
            </table>
        </div>
        <div class="col-sm-4">
            <h4 align="center">Игрок 2</h4>
            <table class="table-bordered" id="score2">
                <tr>
                    <td>Слово</td>
                    <td>Очки</td>
                </tr>
            </table>
            <h4 align="center" id="total_score2"></h4>

            <div align="center"><input type="button" class="btn btn-danger exit" value="Закончить игру"
                                       onclick="end_game()">
                <h4 class="total_score"></h4>
            </div>
        </div>
    </div>
</div>
<h3 align="center" id="gamer">Игрок 1</h3>

<div align="center"><input type="text" id="word" disabled></div>
<br>

<b>
    <div align="center" id="result"></div>
</b>
<br>
<table align="center" class="table-condensed">
    <tr>
        <td><input type="button" class="btn btn-default" id="confirm" value="Подтвердить" onclick="check_word()"></td>
        <td>
            <input type="button" class="btn btn-default" id="cancel" value="Отменить" onclick=cancel()>
        </td>
    </tr>
</table>
<h3 align="center" id="msg">Выберите желаемую букву</h3>
<table align="center" class="table-condensed" id="alphabet">
    <tr>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="ё" onclick="get_letter('ё')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="й" onclick="get_letter('й')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="ц" onclick="get_letter('ц')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="у" onclick="get_letter('у')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="к" onclick="get_letter('к')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="е" onclick="get_letter('е')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="н" onclick="get_letter('н')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="г" onclick="get_letter('г')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="ш" onclick="get_letter('ш')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="щ" onclick="get_letter('щ')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="з" onclick="get_letter('з')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="х" onclick="get_letter('х')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="ъ" onclick="get_letter('ъ')">
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="ф" onclick="get_letter('ф')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="ы" onclick="get_letter('ы')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="в" onclick="get_letter('в')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="а" onclick="get_letter('а')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="п" onclick="get_letter('п')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="р" onclick="get_letter('р')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="о" onclick="get_letter('о')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="л" onclick="get_letter('л')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="д" onclick="get_letter('д')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="ж" onclick="get_letter('ж')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="э" onclick="get_letter('э')">
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="я" onclick="get_letter('я')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="ч" onclick="get_letter('ч')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="с" onclick="get_letter('с')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="м" onclick="get_letter('м')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="и" onclick="get_letter('и')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="т" onclick="get_letter('т')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="ь" onclick="get_letter('ь')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="б" onclick="get_letter('б')">
        </td>
        <td>
            <input type="button" class="btn btn-primary btn-lg" value="ю" onclick="get_letter('ю')">
        </td>
        <td>
        </td>
        <td>
        </td>
    </tr>
</table>
</body>
</html>
