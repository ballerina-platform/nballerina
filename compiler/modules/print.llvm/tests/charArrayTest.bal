import ballerina/test;

// Test cases from https://www.cl.cam.ac.uk/~mgk25/ucs/examples/UTF-8-test.txt
@test:Config {}
function firstPossibleSequenceCharArray() returns error? {
    test:assertEquals(charArray("�".toBytes()), "c\"\\EF\\BF\\BD\"");
    test:assertEquals(charArray("".toBytes()), "c\"\\C2\\80\"");
    test:assertEquals(charArray("ࠀ".toBytes()), "c\"\\E0\\A0\\80\"");
    test:assertEquals(charArray("𐀀".toBytes()), "c\"\\F0\\90\\80\\80\"");
    test:assertEquals(charArray("�����".toBytes()), "c\"\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\"");
    test:assertEquals(charArray("������".toBytes()), "c\"\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\"");
}

@test:Config {}
function lastPossibleSequenceCharArray() returns error? {
    test:assertEquals(charArray("".toBytes()), "c\"\\7F\"");
    test:assertEquals(charArray("߿".toBytes()), "c\"\\DF\\BF\"");
    test:assertEquals(charArray("￿".toBytes()), "c\"\\EF\\BF\\BF\"");
    test:assertEquals(charArray("����".toBytes()), "c\"\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\"");
    test:assertEquals(charArray("�����".toBytes()), "c\"\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\"");
    test:assertEquals(charArray("������".toBytes()), "c\"\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\"");
}

@test:Config {}
function otherBoundaryConditionsCharArray() returns error? {
    test:assertEquals(charArray("퟿".toBytes()), "c\"\\ED\\9F\\BF\"");
    test:assertEquals(charArray("".toBytes()), "c\"\\EE\\80\\80\"");
    test:assertEquals(charArray("�".toBytes()), "c\"\\EF\\BF\\BD\"");
    test:assertEquals(charArray("􏿿".toBytes()), "c\"\\F4\\8F\\BF\\BF\"");
    test:assertEquals(charArray("����".toBytes()), "c\"\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\\EF\\BF\\BD\"");
}

// Pangram test cases from https://www.cl.cam.ac.uk/~mgk25/ucs/examples/quickbrown.txt
@test:Config {}
function correctUnicodeSequencesDanishCharArray() returns error? {
    test:assertEquals(charArray("Quizdeltagerne".toBytes()), "c\"Quizdeltagerne\"");
    test:assertEquals(charArray("spiste".toBytes()), "c\"spiste\"");
    test:assertEquals(charArray("jordbær".toBytes()), "c\"jordb\\C3\\A6r\"");
    test:assertEquals(charArray("med".toBytes()), "c\"med\"");
    test:assertEquals(charArray("fløde,".toBytes()), "c\"fl\\C3\\B8de,\"");
    test:assertEquals(charArray("mens".toBytes()), "c\"mens\"");
    test:assertEquals(charArray("cirkusklovnen".toBytes()), "c\"cirkusklovnen\"");
    test:assertEquals(charArray("Wolther".toBytes()), "c\"Wolther\"");
    test:assertEquals(charArray("spillede".toBytes()), "c\"spillede\"");
    test:assertEquals(charArray("på".toBytes()), "c\"p\\C3\\A5\"");
    test:assertEquals(charArray("xylofon.".toBytes()), "c\"xylofon.\"");
}

@test:Config {}
function correctUnicodeSequencesGermanCharArray() returns error? {
    test:assertEquals(charArray("Falsches".toBytes()), "c\"Falsches\"");
    test:assertEquals(charArray("Üben".toBytes()), "c\"\\C3\\9Cben\"");
    test:assertEquals(charArray("von".toBytes()), "c\"von\"");
    test:assertEquals(charArray("Xylophonmusik".toBytes()), "c\"Xylophonmusik\"");
    test:assertEquals(charArray("quält".toBytes()), "c\"qu\\C3\\A4lt\"");
    test:assertEquals(charArray("jeden".toBytes()), "c\"jeden\"");
    test:assertEquals(charArray("größeren".toBytes()), "c\"gr\\C3\\B6\\C3\\9Feren\"");
    test:assertEquals(charArray("Zwerg".toBytes()), "c\"Zwerg\"");
    test:assertEquals(charArray("Zwölf".toBytes()), "c\"Zw\\C3\\B6lf\"");
    test:assertEquals(charArray("Boxkämpfer".toBytes()), "c\"Boxk\\C3\\A4mpfer\"");
    test:assertEquals(charArray("jagten".toBytes()), "c\"jagten\"");
    test:assertEquals(charArray("Eva".toBytes()), "c\"Eva\"");
    test:assertEquals(charArray("quer".toBytes()), "c\"quer\"");
    test:assertEquals(charArray("über".toBytes()), "c\"\\C3\\BCber\"");
    test:assertEquals(charArray("den".toBytes()), "c\"den\"");
    test:assertEquals(charArray("Sylter".toBytes()), "c\"Sylter\"");
    test:assertEquals(charArray("Deich".toBytes()), "c\"Deich\"");
    test:assertEquals(charArray("Heizölrückstoßabdämpfung".toBytes()), "c\"Heiz\\C3\\B6lr\\C3\\BCcksto\\C3\\9Fabd\\C3\\A4mpfung\"");
}

@test:Config {}
function correctUnicodeSequencesGreekCharArray() returns error? {
    test:assertEquals(charArray("Γαζέες".toBytes()), "c\"\\CE\\93\\CE\\B1\\CE\\B6\\CE\\AD\\CE\\B5\\CF\\82\"");
    test:assertEquals(charArray("καὶ".toBytes()), "c\"\\CE\\BA\\CE\\B1\\E1\\BD\\B6\"");
    test:assertEquals(charArray("μυρτιὲς".toBytes()), "c\"\\CE\\BC\\CF\\85\\CF\\81\\CF\\84\\CE\\B9\\E1\\BD\\B2\\CF\\82\"");
    test:assertEquals(charArray("δὲν".toBytes()), "c\"\\CE\\B4\\E1\\BD\\B2\\CE\\BD\"");
    test:assertEquals(charArray("θὰ".toBytes()), "c\"\\CE\\B8\\E1\\BD\\B0\"");
    test:assertEquals(charArray("βρῶ".toBytes()), "c\"\\CE\\B2\\CF\\81\\E1\\BF\\B6\"");
    test:assertEquals(charArray("πιὰ".toBytes()), "c\"\\CF\\80\\CE\\B9\\E1\\BD\\B0\"");
    test:assertEquals(charArray("στὸ".toBytes()), "c\"\\CF\\83\\CF\\84\\E1\\BD\\B8\"");
    test:assertEquals(charArray("χρυσαφὶ".toBytes()), "c\"\\CF\\87\\CF\\81\\CF\\85\\CF\\83\\CE\\B1\\CF\\86\\E1\\BD\\B6\"");
    test:assertEquals(charArray("ξέφωτο".toBytes()), "c\"\\CE\\BE\\CE\\AD\\CF\\86\\CF\\89\\CF\\84\\CE\\BF\"");
    test:assertEquals(charArray("Ξεσκεπάζω".toBytes()), "c\"\\CE\\9E\\CE\\B5\\CF\\83\\CE\\BA\\CE\\B5\\CF\\80\\CE\\AC\\CE\\B6\\CF\\89\"");
    test:assertEquals(charArray("τὴν".toBytes()), "c\"\\CF\\84\\E1\\BD\\B4\\CE\\BD\"");
    test:assertEquals(charArray("ψυχοφθόρα".toBytes()), "c\"\\CF\\88\\CF\\85\\CF\\87\\CE\\BF\\CF\\86\\CE\\B8\\CF\\8C\\CF\\81\\CE\\B1\"");
    test:assertEquals(charArray("βδελυγμία".toBytes()), "c\"\\CE\\B2\\CE\\B4\\CE\\B5\\CE\\BB\\CF\\85\\CE\\B3\\CE\\BC\\CE\\AF\\CE\\B1\"");
}

@test:Config {}
function correctUnicodeSequencesEnglishCharArray() returns error? {
    test:assertEquals(charArray("The".toBytes()), "c\"The\"");
    test:assertEquals(charArray("quick".toBytes()), "c\"quick\"");
    test:assertEquals(charArray("brown".toBytes()), "c\"brown\"");
    test:assertEquals(charArray("fox".toBytes()), "c\"fox\"");
    test:assertEquals(charArray("jumps".toBytes()), "c\"jumps\"");
    test:assertEquals(charArray("over".toBytes()), "c\"over\"");
    test:assertEquals(charArray("the".toBytes()), "c\"the\"");
    test:assertEquals(charArray("lazy".toBytes()), "c\"lazy\"");
    test:assertEquals(charArray("dog".toBytes()), "c\"dog\"");
}

@test:Config {}
function correctUnicodeSequencesSpanishCharArray() returns error? {
    test:assertEquals(charArray("El".toBytes()), "c\"El\"");
    test:assertEquals(charArray("pingüino".toBytes()), "c\"ping\\C3\\BCino\"");
    test:assertEquals(charArray("Wenceslao".toBytes()), "c\"Wenceslao\"");
    test:assertEquals(charArray("hizo".toBytes()), "c\"hizo\"");
    test:assertEquals(charArray("kilómetros".toBytes()), "c\"kil\\C3\\B3metros\"");
    test:assertEquals(charArray("bajo".toBytes()), "c\"bajo\"");
    test:assertEquals(charArray("exhaustiva".toBytes()), "c\"exhaustiva\"");
    test:assertEquals(charArray("lluvia".toBytes()), "c\"lluvia\"");
    test:assertEquals(charArray("y".toBytes()), "c\"y\"");
    test:assertEquals(charArray("frío,".toBytes()), "c\"fr\\C3\\ADo,\"");
    test:assertEquals(charArray("añoraba".toBytes()), "c\"a\\C3\\B1oraba\"");
    test:assertEquals(charArray("has".toBytes()), "c\"has\"");
    test:assertEquals(charArray("known".toBytes()), "c\"known\"");
    test:assertEquals(charArray("querido".toBytes()), "c\"querido\"");
    test:assertEquals(charArray("cachorro.".toBytes()), "c\"cachorro.\"");
}

@test:Config {}
function correctUnicodeSequencesGaelicCharArray() returns error? {
    test:assertEquals(charArray("D'fhuascail".toBytes()), "c\"D'fhuascail\"");
    test:assertEquals(charArray("Íosa,".toBytes()), "c\"\\C3\\8Dosa,\"");
    test:assertEquals(charArray("Úrmhac".toBytes()), "c\"\\C3\\9Armhac\"");
    test:assertEquals(charArray("na".toBytes()), "c\"na\"");
    test:assertEquals(charArray("hÓighe".toBytes()), "c\"h\\C3\\93ighe\"");
    test:assertEquals(charArray("Beannaithe,".toBytes()), "c\"Beannaithe,\"");
    test:assertEquals(charArray("pór".toBytes()), "c\"p\\C3\\B3r\"");
    test:assertEquals(charArray("Éava".toBytes()), "c\"\\C3\\89ava\"");
    test:assertEquals(charArray("agus".toBytes()), "c\"agus\"");
    test:assertEquals(charArray("Ádhaimh".toBytes()), "c\"\\C3\\81dhaimh\"");
}

@test:Config {}
function correctUnicodeSequencesHungarianCharArray() returns error? {
    test:assertEquals(charArray("Árvíztűrő".toBytes()), "c\"\\C3\\81rv\\C3\\ADzt\\C5\\B1r\\C5\\91\"");
    test:assertEquals(charArray("tükörfúrógép".toBytes()), "c\"t\\C3\\BCk\\C3\\B6rf\\C3\\BAr\\C3\\B3g\\C3\\A9p\"");
}

@test:Config {}
function correctUnicodeSequencesIcelandicCharArray() returns error? {
    test:assertEquals(charArray("Kæmi".toBytes()), "c\"K\\C3\\A6mi\"");
    test:assertEquals(charArray("ný".toBytes()), "c\"n\\C3\\BD\"");
    test:assertEquals(charArray("öxi".toBytes()), "c\"\\C3\\B6xi\"");
    test:assertEquals(charArray("her".toBytes()), "c\"her\"");
    test:assertEquals(charArray("ykist".toBytes()), "c\"ykist\"");
    test:assertEquals(charArray("þjófum".toBytes()), "c\"\\C3\\BEj\\C3\\B3fum\"");
    test:assertEquals(charArray("nú".toBytes()), "c\"n\\C3\\BA\"");
    test:assertEquals(charArray("bæði".toBytes()), "c\"b\\C3\\A6\\C3\\B0i\"");
    test:assertEquals(charArray("víl".toBytes()), "c\"v\\C3\\ADl\"");
    test:assertEquals(charArray("og".toBytes()), "c\"og\"");
    test:assertEquals(charArray("ádrepa".toBytes()), "c\"\\C3\\A1drepa\"");
    test:assertEquals(charArray("Sævör".toBytes()), "c\"S\\C3\\A6v\\C3\\B6r\"");
    test:assertEquals(charArray("grét".toBytes()), "c\"gr\\C3\\A9t\"");
    test:assertEquals(charArray("áðan".toBytes()), "c\"\\C3\\A1\\C3\\B0an\"");
    test:assertEquals(charArray("því".toBytes()), "c\"\\C3\\BEv\\C3\\AD\"");
    test:assertEquals(charArray("úlpan".toBytes()), "c\"\\C3\\BAlpan\"");
    test:assertEquals(charArray("var".toBytes()), "c\"var\"");
    test:assertEquals(charArray("ónýt".toBytes()), "c\"\\C3\\B3n\\C3\\BDt\"");
}

@test:Config {}
function correctUnicodeSequencesJapaneseCharArray() returns error? {
    test:assertEquals(charArray("い".toBytes()), "c\"\\E3\\81\\84\"");
    test:assertEquals(charArray("ろ".toBytes()), "c\"\\E3\\82\\8D\"");
    test:assertEquals(charArray("は".toBytes()), "c\"\\E3\\81\\AF\"");
    test:assertEquals(charArray("に".toBytes()), "c\"\\E3\\81\\AB\"");
    test:assertEquals(charArray("ほ".toBytes()), "c\"\\E3\\81\\BB\"");
    test:assertEquals(charArray("へ".toBytes()), "c\"\\E3\\81\\B8\"");
    test:assertEquals(charArray("と".toBytes()), "c\"\\E3\\81\\A8\"");
    test:assertEquals(charArray("ち".toBytes()), "c\"\\E3\\81\\A1\"");
    test:assertEquals(charArray("り".toBytes()), "c\"\\E3\\82\\8A\"");
    test:assertEquals(charArray("ぬ".toBytes()), "c\"\\E3\\81\\AC\"");
    test:assertEquals(charArray("る".toBytes()), "c\"\\E3\\82\\8B\"");
    test:assertEquals(charArray("を".toBytes()), "c\"\\E3\\82\\92\"");
    test:assertEquals(charArray("わ".toBytes()), "c\"\\E3\\82\\8F\"");
    test:assertEquals(charArray("か".toBytes()), "c\"\\E3\\81\\8B\"");
    test:assertEquals(charArray("よ".toBytes()), "c\"\\E3\\82\\88\"");
    test:assertEquals(charArray("た".toBytes()), "c\"\\E3\\81\\9F\"");
    test:assertEquals(charArray("れ".toBytes()), "c\"\\E3\\82\\8C\"");
    test:assertEquals(charArray("そ".toBytes()), "c\"\\E3\\81\\9D\"");
    test:assertEquals(charArray("つ".toBytes()), "c\"\\E3\\81\\A4\"");
    test:assertEquals(charArray("ね".toBytes()), "c\"\\E3\\81\\AD\"");
    test:assertEquals(charArray("な".toBytes()), "c\"\\E3\\81\\AA\"");
    test:assertEquals(charArray("ら".toBytes()), "c\"\\E3\\82\\89\"");
    test:assertEquals(charArray("む".toBytes()), "c\"\\E3\\82\\80\"");
    test:assertEquals(charArray("う".toBytes()), "c\"\\E3\\81\\86\"");
    test:assertEquals(charArray("ゐ".toBytes()), "c\"\\E3\\82\\90\"");
    test:assertEquals(charArray("の".toBytes()), "c\"\\E3\\81\\AE\"");
    test:assertEquals(charArray("お".toBytes()), "c\"\\E3\\81\\8A\"");
    test:assertEquals(charArray("く".toBytes()), "c\"\\E3\\81\\8F\"");
    test:assertEquals(charArray("や".toBytes()), "c\"\\E3\\82\\84\"");
    test:assertEquals(charArray("ま".toBytes()), "c\"\\E3\\81\\BE\"");
    test:assertEquals(charArray("け".toBytes()), "c\"\\E3\\81\\91\"");
    test:assertEquals(charArray("ふ".toBytes()), "c\"\\E3\\81\\B5\"");
    test:assertEquals(charArray("こ".toBytes()), "c\"\\E3\\81\\93\"");
    test:assertEquals(charArray("え".toBytes()), "c\"\\E3\\81\\88\"");
    test:assertEquals(charArray("て".toBytes()), "c\"\\E3\\81\\A6\"");
    test:assertEquals(charArray("あ".toBytes()), "c\"\\E3\\81\\82\"");
    test:assertEquals(charArray("さ".toBytes()), "c\"\\E3\\81\\95\"");
    test:assertEquals(charArray("き".toBytes()), "c\"\\E3\\81\\8D\"");
    test:assertEquals(charArray("ゆ".toBytes()), "c\"\\E3\\82\\86\"");
    test:assertEquals(charArray("め".toBytes()), "c\"\\E3\\82\\81\"");
    test:assertEquals(charArray("み".toBytes()), "c\"\\E3\\81\\BF\"");
    test:assertEquals(charArray("し".toBytes()), "c\"\\E3\\81\\97\"");
    test:assertEquals(charArray("ゑ".toBytes()), "c\"\\E3\\82\\91\"");
    test:assertEquals(charArray("ひ".toBytes()), "c\"\\E3\\81\\B2\"");
    test:assertEquals(charArray("も".toBytes()), "c\"\\E3\\82\\82\"");
    test:assertEquals(charArray("せ".toBytes()), "c\"\\E3\\81\\9B\"");
    test:assertEquals(charArray("す".toBytes()), "c\"\\E3\\81\\99\"");
    test:assertEquals(charArray("イ".toBytes()), "c\"\\E3\\82\\A4\"");
    test:assertEquals(charArray("ロ".toBytes()), "c\"\\E3\\83\\AD\"");
    test:assertEquals(charArray("ハ".toBytes()), "c\"\\E3\\83\\8F\"");
    test:assertEquals(charArray("ニ".toBytes()), "c\"\\E3\\83\\8B\"");
    test:assertEquals(charArray("ホ".toBytes()), "c\"\\E3\\83\\9B\"");
    test:assertEquals(charArray("ヘ".toBytes()), "c\"\\E3\\83\\98\"");
    test:assertEquals(charArray("ト".toBytes()), "c\"\\E3\\83\\88\"");
    test:assertEquals(charArray("チ".toBytes()), "c\"\\E3\\83\\81\"");
    test:assertEquals(charArray("リ".toBytes()), "c\"\\E3\\83\\AA\"");
    test:assertEquals(charArray("ヌ".toBytes()), "c\"\\E3\\83\\8C\"");
    test:assertEquals(charArray("ル".toBytes()), "c\"\\E3\\83\\AB\"");
    test:assertEquals(charArray("ヲ".toBytes()), "c\"\\E3\\83\\B2\"");
    test:assertEquals(charArray("ワ".toBytes()), "c\"\\E3\\83\\AF\"");
    test:assertEquals(charArray("カ".toBytes()), "c\"\\E3\\82\\AB\"");
    test:assertEquals(charArray("ヨ".toBytes()), "c\"\\E3\\83\\A8\"");
    test:assertEquals(charArray("タ".toBytes()), "c\"\\E3\\82\\BF\"");
    test:assertEquals(charArray("レ".toBytes()), "c\"\\E3\\83\\AC\"");
    test:assertEquals(charArray("ソ".toBytes()), "c\"\\E3\\82\\BD\"");
    test:assertEquals(charArray("ツ".toBytes()), "c\"\\E3\\83\\84\"");
    test:assertEquals(charArray("ネ".toBytes()), "c\"\\E3\\83\\8D\"");
    test:assertEquals(charArray("ナ".toBytes()), "c\"\\E3\\83\\8A\"");
    test:assertEquals(charArray("ラ".toBytes()), "c\"\\E3\\83\\A9\"");
    test:assertEquals(charArray("ム".toBytes()), "c\"\\E3\\83\\A0\"");
    test:assertEquals(charArray("ウ".toBytes()), "c\"\\E3\\82\\A6\"");
    test:assertEquals(charArray("ヰ".toBytes()), "c\"\\E3\\83\\B0\"");
    test:assertEquals(charArray("ノ".toBytes()), "c\"\\E3\\83\\8E\"");
    test:assertEquals(charArray("オ".toBytes()), "c\"\\E3\\82\\AA\"");
    test:assertEquals(charArray("ク".toBytes()), "c\"\\E3\\82\\AF\"");
    test:assertEquals(charArray("ヤ".toBytes()), "c\"\\E3\\83\\A4\"");
    test:assertEquals(charArray("マ".toBytes()), "c\"\\E3\\83\\9E\"");
    test:assertEquals(charArray("ケ".toBytes()), "c\"\\E3\\82\\B1\"");
    test:assertEquals(charArray("フ".toBytes()), "c\"\\E3\\83\\95\"");
    test:assertEquals(charArray("コ".toBytes()), "c\"\\E3\\82\\B3\"");
    test:assertEquals(charArray("エ".toBytes()), "c\"\\E3\\82\\A8\"");
    test:assertEquals(charArray("テ".toBytes()), "c\"\\E3\\83\\86\"");
    test:assertEquals(charArray("ア".toBytes()), "c\"\\E3\\82\\A2\"");
    test:assertEquals(charArray("サ".toBytes()), "c\"\\E3\\82\\B5\"");
    test:assertEquals(charArray("キ".toBytes()), "c\"\\E3\\82\\AD\"");
    test:assertEquals(charArray("ユ".toBytes()), "c\"\\E3\\83\\A6\"");
    test:assertEquals(charArray("メ".toBytes()), "c\"\\E3\\83\\A1\"");
    test:assertEquals(charArray("ミ".toBytes()), "c\"\\E3\\83\\9F\"");
    test:assertEquals(charArray("シ".toBytes()), "c\"\\E3\\82\\B7\"");
    test:assertEquals(charArray("ヱ".toBytes()), "c\"\\E3\\83\\B1\"");
    test:assertEquals(charArray("ヒ".toBytes()), "c\"\\E3\\83\\92\"");
    test:assertEquals(charArray("モ".toBytes()), "c\"\\E3\\83\\A2\"");
    test:assertEquals(charArray("セ".toBytes()), "c\"\\E3\\82\\BB\"");
    test:assertEquals(charArray("ス".toBytes()), "c\"\\E3\\82\\B9\"");
    test:assertEquals(charArray("ン".toBytes()), "c\"\\E3\\83\\B3\"");
}

@test:Config {}
function correctUnicodeSequencesHebrewCharArray() returns error? {
    test:assertEquals(charArray("דג".toBytes()), "c\"\\D7\\93\\D7\\92\"");
    test:assertEquals(charArray("סקרן".toBytes()), "c\"\\D7\\A1\\D7\\A7\\D7\\A8\\D7\\9F\"");
    test:assertEquals(charArray("שט".toBytes()), "c\"\\D7\\A9\\D7\\98\"");
    test:assertEquals(charArray("בים".toBytes()), "c\"\\D7\\91\\D7\\99\\D7\\9D\"");
    test:assertEquals(charArray("מאוכזב".toBytes()), "c\"\\D7\\9E\\D7\\90\\D7\\95\\D7\\9B\\D7\\96\\D7\\91\"");
    test:assertEquals(charArray("ולפתע".toBytes()), "c\"\\D7\\95\\D7\\9C\\D7\\A4\\D7\\AA\\D7\\A2\"");
    test:assertEquals(charArray("מצא".toBytes()), "c\"\\D7\\9E\\D7\\A6\\D7\\90\"");
    test:assertEquals(charArray("לו".toBytes()), "c\"\\D7\\9C\\D7\\95\"");
    test:assertEquals(charArray("חברה".toBytes()), "c\"\\D7\\97\\D7\\91\\D7\\A8\\D7\\94\"");
    test:assertEquals(charArray("איך".toBytes()), "c\"\\D7\\90\\D7\\99\\D7\\9A\"");
    test:assertEquals(charArray("הקליטה".toBytes()), "c\"\\D7\\94\\D7\\A7\\D7\\9C\\D7\\99\\D7\\98\\D7\\94\"");
}

@test:Config {}
function correctUnicodeSequencesPolishCharArray() returns error? {
    test:assertEquals(charArray("Pchnąć".toBytes()), "c\"Pchn\\C4\\85\\C4\\87\"");
    test:assertEquals(charArray("w".toBytes()), "c\"w\"");
    test:assertEquals(charArray("tę".toBytes()), "c\"t\\C4\\99\"");
    test:assertEquals(charArray("łódź".toBytes()), "c\"\\C5\\82\\C3\\B3d\\C5\\BA\"");
    test:assertEquals(charArray("jeża".toBytes()), "c\"je\\C5\\BCa\"");
    test:assertEquals(charArray("lub".toBytes()), "c\"lub\"");
    test:assertEquals(charArray("ośm".toBytes()), "c\"o\\C5\\9Bm\"");
    test:assertEquals(charArray("skrzyń".toBytes()), "c\"skrzy\\C5\\84\"");
    test:assertEquals(charArray("fig".toBytes()), "c\"fig\"");
}

@test:Config {}
function correctUnicodeSequencesRussianCharArray() returns error? {
    test:assertEquals(charArray("В".toBytes()), "c\"\\D0\\92\"");
    test:assertEquals(charArray("чащах".toBytes()), "c\"\\D1\\87\\D0\\B0\\D1\\89\\D0\\B0\\D1\\85\"");
    test:assertEquals(charArray("юга".toBytes()), "c\"\\D1\\8E\\D0\\B3\\D0\\B0\"");
    test:assertEquals(charArray("жил".toBytes()), "c\"\\D0\\B6\\D0\\B8\\D0\\BB\"");
    test:assertEquals(charArray("бы".toBytes()), "c\"\\D0\\B1\\D1\\8B\"");
    test:assertEquals(charArray("цитрус?".toBytes()), "c\"\\D1\\86\\D0\\B8\\D1\\82\\D1\\80\\D1\\83\\D1\\81?\"");
    test:assertEquals(charArray("Да,".toBytes()), "c\"\\D0\\94\\D0\\B0,\"");
    test:assertEquals(charArray("но".toBytes()), "c\"\\D0\\BD\\D0\\BE\"");
    test:assertEquals(charArray("фальшивый".toBytes()), "c\"\\D1\\84\\D0\\B0\\D0\\BB\\D1\\8C\\D1\\88\\D0\\B8\\D0\\B2\\D1\\8B\\D0\\B9\"");
    test:assertEquals(charArray("экземпляр!".toBytes()), "c\"\\D1\\8D\\D0\\BA\\D0\\B7\\D0\\B5\\D0\\BC\\D0\\BF\\D0\\BB\\D1\\8F\\D1\\80!\"");
    test:assertEquals(charArray("Съешь".toBytes()), "c\"\\D0\\A1\\D1\\8A\\D0\\B5\\D1\\88\\D1\\8C\"");
    test:assertEquals(charArray("же".toBytes()), "c\"\\D0\\B6\\D0\\B5\"");
    test:assertEquals(charArray("ещё".toBytes()), "c\"\\D0\\B5\\D1\\89\\D1\\91\"");
    test:assertEquals(charArray("этих".toBytes()), "c\"\\D1\\8D\\D1\\82\\D0\\B8\\D1\\85\"");
    test:assertEquals(charArray("мягких".toBytes()), "c\"\\D0\\BC\\D1\\8F\\D0\\B3\\D0\\BA\\D0\\B8\\D1\\85\"");
    test:assertEquals(charArray("французских".toBytes()), "c\"\\D1\\84\\D1\\80\\D0\\B0\\D0\\BD\\D1\\86\\D1\\83\\D0\\B7\\D1\\81\\D0\\BA\\D0\\B8\\D1\\85\"");
    test:assertEquals(charArray("булок".toBytes()), "c\"\\D0\\B1\\D1\\83\\D0\\BB\\D0\\BE\\D0\\BA\"");
    test:assertEquals(charArray("да".toBytes()), "c\"\\D0\\B4\\D0\\B0\"");
    test:assertEquals(charArray("выпей".toBytes()), "c\"\\D0\\B2\\D1\\8B\\D0\\BF\\D0\\B5\\D0\\B9\"");
    test:assertEquals(charArray("чаю".toBytes()), "c\"\\D1\\87\\D0\\B0\\D1\\8E\"");
}

@test:Config {}
function correctUnicodeSequencesTurkishCharArray() returns error? {
    test:assertEquals(charArray("Pijamalı".toBytes()), "c\"Pijamal\\C4\\B1\"");
    test:assertEquals(charArray("hasta,".toBytes()), "c\"hasta,\"");
    test:assertEquals(charArray("yağız".toBytes()), "c\"ya\\C4\\9F\\C4\\B1z\"");
    test:assertEquals(charArray("şoföre".toBytes()), "c\"\\C5\\9Fof\\C3\\B6re\"");
    test:assertEquals(charArray("çabucak".toBytes()), "c\"\\C3\\A7abucak\"");
    test:assertEquals(charArray("güvendi.".toBytes()), "c\"g\\C3\\BCvendi.\"");
}

@test:Config {}
function correctUnicodeSymbolsCharArray() returns error? {
    test:assertEquals(charArray("␡".toBytes()), "c\"\\EE\\80\\80\\EE\\80\\81\\EE\\80\\82\\EE\\80\\83\\EE\\80\\84\\EE\\80\\85\\EE\\80\\86\\EE\\80\\87\\EE\\80\\88\\EE\\80\\89\\EE\\80\\8A\\EE\\80\\8B\\EE\\80\\8C\\EE\\80\\8D\\EE\\80\\8E\\EE\\80\\8F\\EE\\80\\90\\EE\\80\\91\\EE\\80\\92\\EE\\80\\93\\EE\\80\\94\\EE\\80\\95\\EE\\80\\96\\EE\\80\\97\\EE\\80\\98\\EE\\80\\99\\EE\\80\\9A\\EE\\80\\9B\\EE\\80\\9C\\EE\\80\\9D\\EE\\80\\9E\\EE\\80\\9F\\E2\\90\\A1\\EE\\82\\80\\EE\\82\\81\\EE\\82\\82\\EE\\82\\83\\EE\\82\\84\\EE\\82\\85\\EE\\82\\86\\EE\\82\\87\\EE\\82\\88\\EE\\82\\89\\EE\\82\\8A\\EE\\82\\8B\\EE\\82\\8C\\EE\\82\\8D\\EE\\82\\8E\\EE\\82\\8F\\EE\\82\\90\\EE\\82\\91\\EE\\82\\92\\EE\\82\\93\\EE\\82\\94\\EE\\82\\95\\EE\\82\\96\\EE\\82\\97\\EE\\82\\98\\EE\\82\\99\\EE\\82\\9A\\EE\\82\\9B\\EE\\82\\9C\\EE\\82\\9D\\EE\\82\\9E\\EE\\82\\9F\"");
    test:assertEquals(charArray("!\"#$%&'()*+,-./0123456789:;<=>?@[\\]^_`{|}~¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿".toBytes()), "c\"!\\22#$%&'()*+,-./0123456789:;<=>?@[\\5C]^_`{|}~\\C2\\A1\\C2\\A2\\C2\\A3\\C2\\A4\\C2\\A5\\C2\\A6\\C2\\A7\\C2\\A8\\C2\\A9\\C2\\AA\\C2\\AB\\C2\\AC\\C2\\AD\\C2\\AE\\C2\\AF\\C2\\B0\\C2\\B1\\C2\\B2\\C2\\B3\\C2\\B4\\C2\\B5\\C2\\B6\\C2\\B7\\C2\\B8\\C2\\B9\\C2\\BA\\C2\\BB\\C2\\BC\\C2\\BD\\C2\\BE\\C2\\BF\"");
}
