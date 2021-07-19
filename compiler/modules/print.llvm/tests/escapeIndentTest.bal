// Test cases from https://www.cl.cam.ac.uk/~mgk25/ucs/examples/UTF-8-test.txt
import ballerina/test;

@test:Config {}
function firstPossibleSequence() returns error? {
	test:assertEquals(escapeIdent("�"), "\"\\EF\\BF\\BD\"");
	test:assertEquals(escapeIdent(""), "\"\\C2\\80\"");
	test:assertEquals(escapeIdent("ࠀ"), "\"\\E0\\A0\\80\"");
	test:assertEquals(escapeIdent("𐀀"), "\"\\F0\\90\\80\\80\"");
	test:assertEquals(escapeIdent("�����"), "\"\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\"");
	test:assertEquals(escapeIdent("������"), "\"\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\"");
}

@test:Config {}
function lastPossibleSequence() returns error? {
	test:assertEquals(escapeIdent(""), "\"\\7F\"");
	test:assertEquals(escapeIdent("߿"), "\"\\DF\\BF\"");
	test:assertEquals(escapeIdent("￿"), "\"\\EF\\BF\\BF\"");
	test:assertEquals(escapeIdent("����"), "\"\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\"");
	test:assertEquals(escapeIdent("�����"), "\"\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\"");
	test:assertEquals(escapeIdent("������"), "\"\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\"");
}

@test:Config {}
function otherBoundaryConditions() returns error? {
	test:assertEquals(escapeIdent("퟿"), "\"\\ED\\9F\\BF\"");
	test:assertEquals(escapeIdent(""), "\"\\EE\\80\\80\"");
	test:assertEquals(escapeIdent("�"), "\"\\EF\\BF\\BD\"");
	test:assertEquals(escapeIdent("􏿿"), "\"\\F4\\8F\\BF\\BF\"");
	test:assertEquals(escapeIdent("����"), "\"\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\"");
}

// Pangram test cases from https://www.cl.cam.ac.uk/~mgk25/ucs/examples/quickbrown.txt
@test:Config {}
function correctUnicodeSequencesDanish() returns error? {
	test:assertEquals(escapeIdent("Quizdeltagerne"), "Quizdeltagerne");
	test:assertEquals(escapeIdent("spiste"), "spiste");
	test:assertEquals(escapeIdent("jordbær"), "\"jordb\\C3\\A6r\"");
	test:assertEquals(escapeIdent("med"), "med");
	test:assertEquals(escapeIdent("fløde,"), "\"fl\\C3\\B8de,\"");
	test:assertEquals(escapeIdent("mens"), "mens");
	test:assertEquals(escapeIdent("cirkusklovnen"), "cirkusklovnen");
	test:assertEquals(escapeIdent("Wolther"), "Wolther");
	test:assertEquals(escapeIdent("spillede"), "spillede");
	test:assertEquals(escapeIdent("på"), "\"p\\C3\\A5\"");
	test:assertEquals(escapeIdent("xylofon."), "xylofon.");
}

@test:Config {}
function correctUnicodeSequencesGerman() returns error? {
	test:assertEquals(escapeIdent("Falsches"), "Falsches");
	test:assertEquals(escapeIdent("Üben"), "\"\\C3\\9Cben\"");
	test:assertEquals(escapeIdent("von"), "von");
	test:assertEquals(escapeIdent("Xylophonmusik"), "Xylophonmusik");
	test:assertEquals(escapeIdent("quält"), "\"qu\\C3\\A4lt\"");
	test:assertEquals(escapeIdent("jeden"), "jeden");
	test:assertEquals(escapeIdent("größeren"), "\"gr\\C3\\B6\\C3\\9Feren\"");
	test:assertEquals(escapeIdent("Zwerg"), "Zwerg");
	test:assertEquals(escapeIdent("Zwölf"), "\"Zw\\C3\\B6lf\"");
	test:assertEquals(escapeIdent("Boxkämpfer"), "\"Boxk\\C3\\A4mpfer\"");
	test:assertEquals(escapeIdent("jagten"), "jagten");
	test:assertEquals(escapeIdent("Eva"), "Eva");
	test:assertEquals(escapeIdent("quer"), "quer");
	test:assertEquals(escapeIdent("über"), "\"\\C3\\BCber\"");
	test:assertEquals(escapeIdent("den"), "den");
	test:assertEquals(escapeIdent("Sylter"), "Sylter");
	test:assertEquals(escapeIdent("Deich"), "Deich");
	test:assertEquals(escapeIdent("Heizölrückstoßabdämpfung"), "\"Heiz\\C3\\B6lr\\C3\\BCcksto\\C3\\9Fabd\\C3\\A4mpfung\"");
}

@test:Config {}
function correctUnicodeSequencesGreek() returns error? {
	test:assertEquals(escapeIdent("Γαζέες"), "\"\\CE\\93\\CE\\B1\\CE\\B6\\CE\\AD\\CE\\B5\\CF\\82\"");
	test:assertEquals(escapeIdent("καὶ"), "\"\\CE\\BA\\CE\\B1\\E1\\BD\\B6\"");
	test:assertEquals(escapeIdent("μυρτιὲς"), "\"\\CE\\BC\\CF\\85\\CF\\81\\CF\\84\\CE\\B9\\E1\\BD\\B2\\CF\\82\"");
	test:assertEquals(escapeIdent("δὲν"), "\"\\CE\\B4\\E1\\BD\\B2\\CE\\BD\"");
	test:assertEquals(escapeIdent("θὰ"), "\"\\CE\\B8\\E1\\BD\\B0\"");
	test:assertEquals(escapeIdent("βρῶ"), "\"\\CE\\B2\\CF\\81\\E1\\BF\\B6\"");
	test:assertEquals(escapeIdent("πιὰ"), "\"\\CF\\80\\CE\\B9\\E1\\BD\\B0\"");
	test:assertEquals(escapeIdent("στὸ"), "\"\\CF\\83\\CF\\84\\E1\\BD\\B8\"");
	test:assertEquals(escapeIdent("χρυσαφὶ"), "\"\\CF\\87\\CF\\81\\CF\\85\\CF\\83\\CE\\B1\\CF\\86\\E1\\BD\\B6\"");
	test:assertEquals(escapeIdent("ξέφωτο"), "\"\\CE\\BE\\CE\\AD\\CF\\86\\CF\\89\\CF\\84\\CE\\BF\"");
	test:assertEquals(escapeIdent("Ξεσκεπάζω"), "\"\\CE\\9E\\CE\\B5\\CF\\83\\CE\\BA\\CE\\B5\\CF\\80\\CE\\AC\\CE\\B6\\CF\\89\"");
	test:assertEquals(escapeIdent("τὴν"), "\"\\CF\\84\\E1\\BD\\B4\\CE\\BD\"");
	test:assertEquals(escapeIdent("ψυχοφθόρα"), "\"\\CF\\88\\CF\\85\\CF\\87\\CE\\BF\\CF\\86\\CE\\B8\\CF\\8C\\CF\\81\\CE\\B1\"");
	test:assertEquals(escapeIdent("βδελυγμία"), "\"\\CE\\B2\\CE\\B4\\CE\\B5\\CE\\BB\\CF\\85\\CE\\B3\\CE\\BC\\CE\\AF\\CE\\B1\"");
}

@test:Config {}
function correctUnicodeSequencesEnglish() returns error? {
	test:assertEquals(escapeIdent("The"), "The");
	test:assertEquals(escapeIdent("quick"), "quick");
	test:assertEquals(escapeIdent("brown"), "brown");
	test:assertEquals(escapeIdent("fox"), "fox");
	test:assertEquals(escapeIdent("jumps"), "jumps");
	test:assertEquals(escapeIdent("over"), "over");
	test:assertEquals(escapeIdent("the"), "the");
	test:assertEquals(escapeIdent("lazy"), "lazy");
	test:assertEquals(escapeIdent("dog"), "dog");
}

@test:Config {}
function correctUnicodeSequencesSpanish() returns error? {
	test:assertEquals(escapeIdent("El"), "El");
	test:assertEquals(escapeIdent("pingüino"), "\"ping\\C3\\BCino\"");
	test:assertEquals(escapeIdent("Wenceslao"), "Wenceslao");
	test:assertEquals(escapeIdent("hizo"), "hizo");
	test:assertEquals(escapeIdent("kilómetros"), "\"kil\\C3\\B3metros\"");
	test:assertEquals(escapeIdent("bajo"), "bajo");
	test:assertEquals(escapeIdent("exhaustiva"), "exhaustiva");
	test:assertEquals(escapeIdent("lluvia"), "lluvia");
	test:assertEquals(escapeIdent("y"), "y");
	test:assertEquals(escapeIdent("frío,"), "\"fr\\C3\\ADo,\"");
	test:assertEquals(escapeIdent("añoraba"), "\"a\\C3\\B1oraba\"");
	test:assertEquals(escapeIdent("has"), "has");
	test:assertEquals(escapeIdent("known"), "known");
	test:assertEquals(escapeIdent("querido"), "querido");
	test:assertEquals(escapeIdent("cachorro."), "cachorro.");
}

@test:Config {}
function correctUnicodeSequencesGaelic() returns error? {
	test:assertEquals(escapeIdent("D'fhuascail"), "\"D'fhuascail\"");
	test:assertEquals(escapeIdent("Íosa,"), "\"\\C3\\8Dosa,\"");
	test:assertEquals(escapeIdent("Úrmhac"), "\"\\C3\\9Armhac\"");
	test:assertEquals(escapeIdent("na"), "na");
	test:assertEquals(escapeIdent("hÓighe"), "\"h\\C3\\93ighe\"");
	test:assertEquals(escapeIdent("Beannaithe,"), "\"Beannaithe,\"");
	test:assertEquals(escapeIdent("pór"), "\"p\\C3\\B3r\"");
	test:assertEquals(escapeIdent("Éava"), "\"\\C3\\89ava\"");
	test:assertEquals(escapeIdent("agus"), "agus");
	test:assertEquals(escapeIdent("Ádhaimh"), "\"\\C3\\81dhaimh\"");
}

@test:Config {}
function correctUnicodeSequencesHungarian() returns error? {
	test:assertEquals(escapeIdent("Árvíztűrő"), "\"\\C3\\81rv\\C3\\ADzt\\C5\\B1r\\C5\\91\"");
	test:assertEquals(escapeIdent("tükörfúrógép"), "\"t\\C3\\BCk\\C3\\B6rf\\C3\\BAr\\C3\\B3g\\C3\\A9p\"");
}

@test:Config {}
function correctUnicodeSequencesIcelandic() returns error? {
	test:assertEquals(escapeIdent("Kæmi"), "\"K\\C3\\A6mi\"");
	test:assertEquals(escapeIdent("ný"), "\"n\\C3\\BD\"");
	test:assertEquals(escapeIdent("öxi"), "\"\\C3\\B6xi\"");
	test:assertEquals(escapeIdent("her"), "her");
	test:assertEquals(escapeIdent("ykist"), "ykist");
	test:assertEquals(escapeIdent("þjófum"), "\"\\C3\\BEj\\C3\\B3fum\"");
	test:assertEquals(escapeIdent("nú"), "\"n\\C3\\BA\"");
	test:assertEquals(escapeIdent("bæði"), "\"b\\C3\\A6\\C3\\B0i\"");
	test:assertEquals(escapeIdent("víl"), "\"v\\C3\\ADl\"");
	test:assertEquals(escapeIdent("og"), "og");
	test:assertEquals(escapeIdent("ádrepa"), "\"\\C3\\A1drepa\"");
	test:assertEquals(escapeIdent("Sævör"), "\"S\\C3\\A6v\\C3\\B6r\"");
	test:assertEquals(escapeIdent("grét"), "\"gr\\C3\\A9t\"");
	test:assertEquals(escapeIdent("áðan"), "\"\\C3\\A1\\C3\\B0an\"");
	test:assertEquals(escapeIdent("því"), "\"\\C3\\BEv\\C3\\AD\"");
	test:assertEquals(escapeIdent("úlpan"), "\"\\C3\\BAlpan\"");
	test:assertEquals(escapeIdent("var"), "var");
	test:assertEquals(escapeIdent("ónýt"), "\"\\C3\\B3n\\C3\\BDt\"");
}

@test:Config {}
function correctUnicodeSequencesJapanese() returns error? {
	test:assertEquals(escapeIdent("い"), "\"\\E3\\81\\84\"");
	test:assertEquals(escapeIdent("ろ"), "\"\\E3\\82\\8D\"");
	test:assertEquals(escapeIdent("は"), "\"\\E3\\81\\AF\"");
	test:assertEquals(escapeIdent("に"), "\"\\E3\\81\\AB\"");
	test:assertEquals(escapeIdent("ほ"), "\"\\E3\\81\\BB\"");
	test:assertEquals(escapeIdent("へ"), "\"\\E3\\81\\B8\"");
	test:assertEquals(escapeIdent("と"), "\"\\E3\\81\\A8\"");
	test:assertEquals(escapeIdent("ち"), "\"\\E3\\81\\A1\"");
	test:assertEquals(escapeIdent("り"), "\"\\E3\\82\\8A\"");
	test:assertEquals(escapeIdent("ぬ"), "\"\\E3\\81\\AC\"");
	test:assertEquals(escapeIdent("る"), "\"\\E3\\82\\8B\"");
	test:assertEquals(escapeIdent("を"), "\"\\E3\\82\\92\"");
	test:assertEquals(escapeIdent("わ"), "\"\\E3\\82\\8F\"");
	test:assertEquals(escapeIdent("か"), "\"\\E3\\81\\8B\"");
	test:assertEquals(escapeIdent("よ"), "\"\\E3\\82\\88\"");
	test:assertEquals(escapeIdent("た"), "\"\\E3\\81\\9F\"");
	test:assertEquals(escapeIdent("れ"), "\"\\E3\\82\\8C\"");
	test:assertEquals(escapeIdent("そ"), "\"\\E3\\81\\9D\"");
	test:assertEquals(escapeIdent("つ"), "\"\\E3\\81\\A4\"");
	test:assertEquals(escapeIdent("ね"), "\"\\E3\\81\\AD\"");
	test:assertEquals(escapeIdent("な"), "\"\\E3\\81\\AA\"");
	test:assertEquals(escapeIdent("ら"), "\"\\E3\\82\\89\"");
	test:assertEquals(escapeIdent("む"), "\"\\E3\\82\\80\"");
	test:assertEquals(escapeIdent("う"), "\"\\E3\\81\\86\"");
	test:assertEquals(escapeIdent("ゐ"), "\"\\E3\\82\\90\"");
	test:assertEquals(escapeIdent("の"), "\"\\E3\\81\\AE\"");
	test:assertEquals(escapeIdent("お"), "\"\\E3\\81\\8A\"");
	test:assertEquals(escapeIdent("く"), "\"\\E3\\81\\8F\"");
	test:assertEquals(escapeIdent("や"), "\"\\E3\\82\\84\"");
	test:assertEquals(escapeIdent("ま"), "\"\\E3\\81\\BE\"");
	test:assertEquals(escapeIdent("け"), "\"\\E3\\81\\91\"");
	test:assertEquals(escapeIdent("ふ"), "\"\\E3\\81\\B5\"");
	test:assertEquals(escapeIdent("こ"), "\"\\E3\\81\\93\"");
	test:assertEquals(escapeIdent("え"), "\"\\E3\\81\\88\"");
	test:assertEquals(escapeIdent("て"), "\"\\E3\\81\\A6\"");
	test:assertEquals(escapeIdent("あ"), "\"\\E3\\81\\82\"");
	test:assertEquals(escapeIdent("さ"), "\"\\E3\\81\\95\"");
	test:assertEquals(escapeIdent("き"), "\"\\E3\\81\\8D\"");
	test:assertEquals(escapeIdent("ゆ"), "\"\\E3\\82\\86\"");
	test:assertEquals(escapeIdent("め"), "\"\\E3\\82\\81\"");
	test:assertEquals(escapeIdent("み"), "\"\\E3\\81\\BF\"");
	test:assertEquals(escapeIdent("し"), "\"\\E3\\81\\97\"");
	test:assertEquals(escapeIdent("ゑ"), "\"\\E3\\82\\91\"");
	test:assertEquals(escapeIdent("ひ"), "\"\\E3\\81\\B2\"");
	test:assertEquals(escapeIdent("も"), "\"\\E3\\82\\82\"");
	test:assertEquals(escapeIdent("せ"), "\"\\E3\\81\\9B\"");
	test:assertEquals(escapeIdent("す"), "\"\\E3\\81\\99\"");
	test:assertEquals(escapeIdent("イ"), "\"\\E3\\82\\A4\"");
	test:assertEquals(escapeIdent("ロ"), "\"\\E3\\83\\AD\"");
	test:assertEquals(escapeIdent("ハ"), "\"\\E3\\83\\8F\"");
	test:assertEquals(escapeIdent("ニ"), "\"\\E3\\83\\8B\"");
	test:assertEquals(escapeIdent("ホ"), "\"\\E3\\83\\9B\"");
	test:assertEquals(escapeIdent("ヘ"), "\"\\E3\\83\\98\"");
	test:assertEquals(escapeIdent("ト"), "\"\\E3\\83\\88\"");
	test:assertEquals(escapeIdent("チ"), "\"\\E3\\83\\81\"");
	test:assertEquals(escapeIdent("リ"), "\"\\E3\\83\\AA\"");
	test:assertEquals(escapeIdent("ヌ"), "\"\\E3\\83\\8C\"");
	test:assertEquals(escapeIdent("ル"), "\"\\E3\\83\\AB\"");
	test:assertEquals(escapeIdent("ヲ"), "\"\\E3\\83\\B2\"");
	test:assertEquals(escapeIdent("ワ"), "\"\\E3\\83\\AF\"");
	test:assertEquals(escapeIdent("カ"), "\"\\E3\\82\\AB\"");
	test:assertEquals(escapeIdent("ヨ"), "\"\\E3\\83\\A8\"");
	test:assertEquals(escapeIdent("タ"), "\"\\E3\\82\\BF\"");
	test:assertEquals(escapeIdent("レ"), "\"\\E3\\83\\AC\"");
	test:assertEquals(escapeIdent("ソ"), "\"\\E3\\82\\BD\"");
	test:assertEquals(escapeIdent("ツ"), "\"\\E3\\83\\84\"");
	test:assertEquals(escapeIdent("ネ"), "\"\\E3\\83\\8D\"");
	test:assertEquals(escapeIdent("ナ"), "\"\\E3\\83\\8A\"");
	test:assertEquals(escapeIdent("ラ"), "\"\\E3\\83\\A9\"");
	test:assertEquals(escapeIdent("ム"), "\"\\E3\\83\\A0\"");
	test:assertEquals(escapeIdent("ウ"), "\"\\E3\\82\\A6\"");
	test:assertEquals(escapeIdent("ヰ"), "\"\\E3\\83\\B0\"");
	test:assertEquals(escapeIdent("ノ"), "\"\\E3\\83\\8E\"");
	test:assertEquals(escapeIdent("オ"), "\"\\E3\\82\\AA\"");
	test:assertEquals(escapeIdent("ク"), "\"\\E3\\82\\AF\"");
	test:assertEquals(escapeIdent("ヤ"), "\"\\E3\\83\\A4\"");
	test:assertEquals(escapeIdent("マ"), "\"\\E3\\83\\9E\"");
	test:assertEquals(escapeIdent("ケ"), "\"\\E3\\82\\B1\"");
	test:assertEquals(escapeIdent("フ"), "\"\\E3\\83\\95\"");
	test:assertEquals(escapeIdent("コ"), "\"\\E3\\82\\B3\"");
	test:assertEquals(escapeIdent("エ"), "\"\\E3\\82\\A8\"");
	test:assertEquals(escapeIdent("テ"), "\"\\E3\\83\\86\"");
	test:assertEquals(escapeIdent("ア"), "\"\\E3\\82\\A2\"");
	test:assertEquals(escapeIdent("サ"), "\"\\E3\\82\\B5\"");
	test:assertEquals(escapeIdent("キ"), "\"\\E3\\82\\AD\"");
	test:assertEquals(escapeIdent("ユ"), "\"\\E3\\83\\A6\"");
	test:assertEquals(escapeIdent("メ"), "\"\\E3\\83\\A1\"");
	test:assertEquals(escapeIdent("ミ"), "\"\\E3\\83\\9F\"");
	test:assertEquals(escapeIdent("シ"), "\"\\E3\\82\\B7\"");
	test:assertEquals(escapeIdent("ヱ"), "\"\\E3\\83\\B1\"");
	test:assertEquals(escapeIdent("ヒ"), "\"\\E3\\83\\92\"");
	test:assertEquals(escapeIdent("モ"), "\"\\E3\\83\\A2\"");
	test:assertEquals(escapeIdent("セ"), "\"\\E3\\82\\BB\"");
	test:assertEquals(escapeIdent("ス"), "\"\\E3\\82\\B9\"");
	test:assertEquals(escapeIdent("ン"), "\"\\E3\\83\\B3\"");
}

@test:Config {}
function correctUnicodeSequencesHebrew() returns error? {
	test:assertEquals(escapeIdent("דג"), "\"\\D7\\93\\D7\\92\"");
	test:assertEquals(escapeIdent("סקרן"), "\"\\D7\\A1\\D7\\A7\\D7\\A8\\D7\\9F\"");
	test:assertEquals(escapeIdent("שט"), "\"\\D7\\A9\\D7\\98\"");
	test:assertEquals(escapeIdent("בים"), "\"\\D7\\91\\D7\\99\\D7\\9D\"");
	test:assertEquals(escapeIdent("מאוכזב"), "\"\\D7\\9E\\D7\\90\\D7\\95\\D7\\9B\\D7\\96\\D7\\91\"");
	test:assertEquals(escapeIdent("ולפתע"), "\"\\D7\\95\\D7\\9C\\D7\\A4\\D7\\AA\\D7\\A2\"");
	test:assertEquals(escapeIdent("מצא"), "\"\\D7\\9E\\D7\\A6\\D7\\90\"");
	test:assertEquals(escapeIdent("לו"), "\"\\D7\\9C\\D7\\95\"");
	test:assertEquals(escapeIdent("חברה"), "\"\\D7\\97\\D7\\91\\D7\\A8\\D7\\94\"");
	test:assertEquals(escapeIdent("איך"), "\"\\D7\\90\\D7\\99\\D7\\9A\"");
	test:assertEquals(escapeIdent("הקליטה"), "\"\\D7\\94\\D7\\A7\\D7\\9C\\D7\\99\\D7\\98\\D7\\94\"");
}

@test:Config {}
function correctUnicodeSequencesPolish() returns error? {
	test:assertEquals(escapeIdent("Pchnąć"), "\"Pchn\\C4\\85\\C4\\87\"");
	test:assertEquals(escapeIdent("w"), "w");
	test:assertEquals(escapeIdent("tę"), "\"t\\C4\\99\"");
	test:assertEquals(escapeIdent("łódź"), "\"\\C5\\82\\C3\\B3d\\C5\\BA\"");
	test:assertEquals(escapeIdent("jeża"), "\"je\\C5\\BCa\"");
	test:assertEquals(escapeIdent("lub"), "lub");
	test:assertEquals(escapeIdent("ośm"), "\"o\\C5\\9Bm\"");
	test:assertEquals(escapeIdent("skrzyń"), "\"skrzy\\C5\\84\"");
	test:assertEquals(escapeIdent("fig"), "fig");
}

@test:Config {}
function correctUnicodeSequencesRussian() returns error? {
	test:assertEquals(escapeIdent("В"), "\"\\D0\\92\"");
	test:assertEquals(escapeIdent("чащах"), "\"\\D1\\87\\D0\\B0\\D1\\89\\D0\\B0\\D1\\85\"");
	test:assertEquals(escapeIdent("юга"), "\"\\D1\\8E\\D0\\B3\\D0\\B0\"");
	test:assertEquals(escapeIdent("жил"), "\"\\D0\\B6\\D0\\B8\\D0\\BB\"");
	test:assertEquals(escapeIdent("бы"), "\"\\D0\\B1\\D1\\8B\"");
	test:assertEquals(escapeIdent("цитрус?"), "\"\\D1\\86\\D0\\B8\\D1\\82\\D1\\80\\D1\\83\\D1\\81?\"");
	test:assertEquals(escapeIdent("Да,"), "\"\\D0\\94\\D0\\B0,\"");
	test:assertEquals(escapeIdent("но"), "\"\\D0\\BD\\D0\\BE\"");
	test:assertEquals(escapeIdent("фальшивый"), "\"\\D1\\84\\D0\\B0\\D0\\BB\\D1\\8C\\D1\\88\\D0\\B8\\D0\\B2\\D1\\8B\\D0\\B9\"");
	test:assertEquals(escapeIdent("экземпляр!"), "\"\\D1\\8D\\D0\\BA\\D0\\B7\\D0\\B5\\D0\\BC\\D0\\BF\\D0\\BB\\D1\\8F\\D1\\80!\"");
	test:assertEquals(escapeIdent("Съешь"), "\"\\D0\\A1\\D1\\8A\\D0\\B5\\D1\\88\\D1\\8C\"");
	test:assertEquals(escapeIdent("же"), "\"\\D0\\B6\\D0\\B5\"");
	test:assertEquals(escapeIdent("ещё"), "\"\\D0\\B5\\D1\\89\\D1\\91\"");
	test:assertEquals(escapeIdent("этих"), "\"\\D1\\8D\\D1\\82\\D0\\B8\\D1\\85\"");
	test:assertEquals(escapeIdent("мягких"), "\"\\D0\\BC\\D1\\8F\\D0\\B3\\D0\\BA\\D0\\B8\\D1\\85\"");
	test:assertEquals(escapeIdent("французских"), "\"\\D1\\84\\D1\\80\\D0\\B0\\D0\\BD\\D1\\86\\D1\\83\\D0\\B7\\D1\\81\\D0\\BA\\D0\\B8\\D1\\85\"");
	test:assertEquals(escapeIdent("булок"), "\"\\D0\\B1\\D1\\83\\D0\\BB\\D0\\BE\\D0\\BA\"");
	test:assertEquals(escapeIdent("да"), "\"\\D0\\B4\\D0\\B0\"");
	test:assertEquals(escapeIdent("выпей"), "\"\\D0\\B2\\D1\\8B\\D0\\BF\\D0\\B5\\D0\\B9\"");
	test:assertEquals(escapeIdent("чаю"), "\"\\D1\\87\\D0\\B0\\D1\\8E\"");
}


@test:Config {}
function correctUnicodeSequencesTurkish() returns error? {
	test:assertEquals(escapeIdent("Pijamalı"), "\"Pijamal\\C4\\B1\"");
	test:assertEquals(escapeIdent("hasta,"), "\"hasta,\"");
	test:assertEquals(escapeIdent("yağız"), "\"ya\\C4\\9F\\C4\\B1z\"");
	test:assertEquals(escapeIdent("şoföre"), "\"\\C5\\9Fof\\C3\\B6re\"");
	test:assertEquals(escapeIdent("çabucak"), "\"\\C3\\A7abucak\"");
	test:assertEquals(escapeIdent("güvendi."), "\"g\\C3\\BCvendi.\"");
}
