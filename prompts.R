# 9th grade exam

juhis="Tutvuda alustekstidega ja kirjutada nende põhjal 200-sõnaline kirjand, kus mõtiskleda teismeliste toitumisharjumuste üle. Pealkirjastada kirjand. Kirjutada sissejuhatus, kus püstitada probleem ja sõnastada enda põhiseisukoha. Toetada oma põhiseisukohta vähemalt kahe teemaarenduslõiguga. Igas lõigus esitada alaväide, milles kasutada vähemalt ühte alusteksti näidet. Lisada ka enda näiteid. Kokkuvõttes esitada peamised järeldused."

tunnused = tibble(
  Asp = paste0("Asp_", c(35, 25, 39, 41, 28, 40, 42, 43, 34)),
  task =paste0('Your task is to grade this Estonian 9th grade exam essay kirjand in """triple quotes""" below, using the provided grading rubric. For reference, the student was asked to do the following: "', juhis  ,'" Here you will ONLY grade this aspect:'),
  tunnus = c( "Pealkiri ja sissejuhatus", 
               "Teemaarendus ja alusteksti kasutamine", 
               "Teemaarendus ja argumentatsioon", 
               "Lõpetus", 
               "Sõnavalik", 
               "Lausemoodustus (ühildumine, sõnajärg, rektsioon)", 
               "Kirjavahemärgistus",       
               "Õigekiri ja vormimoodustus", 
               "Liigendus ja vormistus"),
  punktid = "Grade this on a scale of 0 to 3 points. Keep in mind this is just a text by an Estonian 9th grader. Use the following criteria to assess how many points to award, following this principle: if all the criteria are fulfilled then give 3 points but if something is lacking then lower points as described in this rubric:",
  mudel = c(
pealkiri = "3 if: pealkiri haarav või kitsendab teemat ja seostub selgelt probleemipüstitusega, sissejuhatuses avatakse probleemi taust; probleemipüstitusena esitatakse üks selgelt sõnastatud põhiväide või -küsimus, mis loob aluse teemaarenduseks; anna 3 punkti isegi kui pealkiri pole haarav kuid sissejuhatus täidab kriteeriumid.
2 if: pealkiri seostub probleemipüstitusega; sissejuhatuses avatakse probleemi taust; probleemipüstituses esitatud põhiväide või põhiküsimus haakub teemaarendusega osaliselt või avatakse see üldsõnaliselt.
1 if: pealkiri üldsõnaline või puudub; probleemi taust avatakse osaliselt; probleemipüstituses esitatud põhiväide või põhiküsimus ebaselgelt sõnastatud, endastmõistetav või tõestamatu.
0 if: probleemipüstitus puudub.",
teemaalg = 
'Two alustekst reference texts were provided here; the student is expected to engage with at least one of them. Alustekst 1 from tervisliktoitumine.ee: "Laste toitumine tähendab tervislikke ja läbimõeldud valikuid" (sisu: toitumise jälgimise olulisus, vitamiinide ja mineraalainete defitsiidi oht, teismelised ja ebatervislikud suupisted, Siiri Krümann toitumishäiretest, tervislikud ja läbimõeldud valikud). Alustekst 2 from Tervise Arengu Insituut: "Laste ülekaal ja rasvumine" (sisu: koolieas toitumise iseseisvumine, lühikesed söögivahetunnid, valed söögiajad, hommikusöögi ja lõuna vahelejätmine, näksimine, vanema järelevalve puudumine, ülekaalulisuse risk). Take this into account and grade:
3 if: alustekstidest toodud vähemalt 1 näide; osundatud tsitaadi või refereeringuga; näidet laiendatakse enda mõtetega.
2 if: alustekstidest toodud vähemalt 1 näide aga osundatud ebaselgelt (nt tekstile või autorile ei viidata korrektselt); näidet laiendatakse enda mõtetega.
1 if: alustekstist toodud vähemalt 1 näide; osundatud ainult temaatiliselt, ilma viitamata; näidet ei seota enda mõtetega piisavalt selgelt.
0 if: alustekstist ei ole näiteid toodud või pole need asjakohased.',
teemaarg='3 if: alaväited selgelt sõnastatud ja seotud põhiväitega; alaväited esitatud loogilises järjekorras; igas lõigus esitatud näiteid selgitatud ja laiendatud, need on asjakohased; näidetest kasvavad loogiliselt välja lõikude järeldused.
2 if: alaväited selgelt sõnastatud ja osaliselt seotud põhiväitega; alaväited esitatud loogilises järjekorras; igas lõigus esitatud näiteid selgitatud ja laiendatud, need on asjakohased; näidetest ei kasva selgelt välja järeldused.
1 if: kõik alaväited pole selgelt sõnastatud; alaväited on osaliselt seotud põhiväitega; toodud näiteid osaliselt laiendatud; näidetest ei kasva välja järeldused.
0 if: argumentatsioon on seosetu või puudub.',
lopetus="3 if: sissejuhatuses püstitatud probleemile on vastatud; lõikude peamised järeldused on teises sõnastuses kokku võetud.
2 if: probleemile on vastatud; lõikude peamisi järeldusi korratakse sissejuhatusele ja teemaarendusele ligilähedases sõnastuses.
1 if: probleemile vastatud osaliselt või tuuakse sisse uus teema; lõikude peamisi järeldusi korratakse sissejuhatuse ja teemaarendusega samas sõnastuses.
0 if: lõpetus pole teemaarenduse või sissejuhatusega seotud.",
sonavalik = '3 if: sõnavalik on isikupärane ja rikkalik; sõnavalik sobib kirjakeelsesse teksti; võib esineda üksik sõnastusraskus või sõnastusviga.
2 if: sõnavalik mitmekesine, esineb üksikuid sõnakordusi; aga sõnavalik sobib kirjakeelsesse teksti; esineb mõnesid sõnastusraskusi.
1 if: sõnavalik ühekülgne, esineb palju sõnakordusi; sõnavalik sobib suuremalt jaolt kirjakeelsesse teksti; esineb palju sõnastusraskusi.
0 if: sõnavalik ei sobi kirjakeelsesse teksti ja sõnastusraskuste tõttu tekst arusaamatu.
Note that sõnakordus here means repeating the same content word close by where a synonym would flow better, for example toitu in "Õpilased lähevad tihit poodi toitu ostma. Nad ostavad sealt ainult kommi kuna pood ei paku korralikku toitu."',
lausemoodustus = "3 if: laused on arusaadavad ja terviklikud; kasutatakse sidusaid ja erineva ülesehitusega lauseid; esineb üksik lausestuseksimus.
2 if: laused arusaadavad ja terviklikud; kasutatakse sidusaid ja sarnase ülesehitusega lauseid; esineb mõnesid lausestuseksimusi.
1 if: laused suuremalt jaolt arusaadavad; kasutatakse suuremalt jaolt sidusaid lauseid, mille ülesehitus ühekülgne; esineb palju lausestuseksimusi.
0 if: laused ebaselged ja välja arendamata, lausestuseksimuste tõttu tekst arusaamatu.",
kirjavahe = "3 if: kirjavahemärgistus on täpne; võib esineda 0-2 viga kokku.
2 if: kirjavahemärgistus valdavalt täpne; võib esineda 3-4 viga kokku.
1 if: kirjavahemärgistuses esineb palju puudusi; võib esineda 5-6 viga kokku.
0 if: kirjavahemärgistus puudulik.
This aspect only refers to the correct usage of any punctuation like koma, jutumärgid, kriipsud, koolon, lauselõpumärgid, if and where relevant (but NOT lack of space after punctuation). Do not count repeated mistakes as new mistakes and do not be too harsh.",
oigekiri = "3 if: õigekiri ja vormimoodustus on korrektne; võib esineda 0-2 viga kokku.
2 if: valdavalt korrektne; 3-4 viga kokku.
1 if: palju puudusi; 5-6 viga kokku.
0 if: õigekiri ja vormimoodustus puudulik, üle 7 vea.
Do not count repeated mistakes as new mistakes. This aspect only considers  algustähed, sõnade kokku- ja lahkukirjutamine, häälikuortograafia, käänamine-pööramine. Ignore obvious typos like swapped letters and do not be too harsh.",
liigendus = "3 if: tekst on liigendatud; lõigud on proportsionaalsed; tekst on trükitud korrektselt, võib esineda 0-2 trükiviga.
2 if: tekst liigendatud; esineb üksik ebaproportsionaalne lõik; tekst trükitud valdavalt korrektselt, võib esineda mõningaid trükivigu (3-4).
1 if: tekst liigendatud ebakorrapäraselt; esineb mitu ebaproportsionaalset lõiku; tekst trükitud ebakorrektselt, leidub palju trükivigu (5 või enam).
0 if: tekst liigendamata (pole lõike) või tekst trükivigade tõttu arusaamatu.
Do not count repeated mistakes as new mistakes and do not be too harsh here. Also trükiviga means typo or accidental mistake like swapped letters so ignore morphology, syntax or spelling errors here. Proper lack of space after punctuation counts as one liigendus mistake."
),
siin = 'First explain your reasoning of relevant rubric criteria VERY briefly using keywords or phrases in Estonian in this comma-separated format:\n"Seletus: asjaolu: kirjeldus, asjaolu: kirjeldus, ... . Hinne: N"\nending with N points suitable grade. Express relevant asjaolud like "probleemile: vastatud", "laused: arusaadavad kuid esineb eksimusi", "õigekiri: palju puudusi; trükivigu: ei esine"). Do NOT provide text examples in your reasoning.\nEssay text begins here:\n\n"""'
) %>% 
mutate(prompt=paste0(task, " ", tunnus, ". ", punktid, "\n\n", mudel, "\n\n", siin, "\n"))

paste0(prompt, Kirjand, '\n"""\n\nNow provide Seletus and Hinne for ', tunnus, '!'))



# Your task is to grade this Estonian 9th grade exam essay kirjand in """triple quotes""" below, using the provided grading rubric. For reference, the student was asked to do the following: "Tutvuda alustekstidega ja kirjutada nende põhjal 200-sõnaline kirjand, kus mõtiskleda teismeliste toitumisharjumuste üle. Pealkirjastada kirjand. Kirjutada sissejuhatus, kus püstitada probleem ja sõnastada enda põhiseisukoha. Toetada oma põhiseisukohta vähemalt kahe teemaarenduslõiguga. Igas lõigus esitada alaväide, milles kasutada vähemalt ühte alusteksti näidet. Lisada ka enda näiteid. Kokkuvõttes esitada peamised järeldused." Here you will ONLY grade this aspect: Sõnavalik. Grade this on a scale of 0 to 3 points. Keep in mind this is just a text by an Estonian 9th grader. Use the following criteria to assess how many points to award, following this principle: if all the criteria are fulfilled then give 3 points but if something is lacking then lower points as described in this rubric:
#   
# 3 if: sõnavalik on isikupärane ja rikkalik; sõnavalik sobib kirjakeelsesse teksti; võib esineda üksik sõnastusraskus või sõnastusviga.
# 2 if: sõnavalik mitmekesine, esineb üksikuid sõnakordusi; aga sõnavalik sobib kirjakeelsesse teksti; esineb mõnesid sõnastusraskusi.
# 1 if: sõnavalik ühekülgne, esineb palju sõnakordusi; sõnavalik sobib suuremalt jaolt kirjakeelsesse teksti; esineb palju sõnastusraskusi.
# 0 if: sõnavalik ei sobi kirjakeelsesse teksti ja sõnastusraskuste tõttu tekst arusaamatu.
# Note that sõnakordus here means repeating the same content word close by where a synonym would flow better, for example toitu in "Õpilased lähevad tihit poodi toitu ostma. Nad ostavad sealt ainult kommi kuna pood ei paku korralikku toitu."
# 
# First explain your reasoning of relevant rubric criteria VERY briefly using keywords or phrases in Estonian in this comma-separated format:
# "Seletus: asjaolu: kirjeldus, asjaolu: kirjeldus, ... . Hinne: N"
# ending with N points suitable grade. Express relevant asjaolud like "probleemile: vastatud", "laused: arusaadavad kuid esineb eksimusi", "õigekiri: palju puudusi; trükivigu: ei esine"). Do NOT provide text examples in your reasoning.
# Essay text begins here:
#   
# """
# .
# .
# .
# """
# 
# Now provide Seletus and Hinne for Sõnavalik!


#---------------------------------------------------------------



# 12th grade

tunnused12 = tibble(
  Asp = paste0("Asp_", c(35, 25, 39, 41, 28, 40, 42, 43, 34)),
task =paste0('Your task is to grade this Estonian 9th grade exam essay kirjand in """triple quotes""" below, using the provided grading rubric. For reference, the student was asked to do the following: "', juhis  ,'" Here you will ONLY grade this aspect:'),
tunnus = c( "Pealkiri ja sissejuhatus", 
            "Teemaarendus ja alusteksti kasutamine", 
            "Teemaarendus ja argumentatsioon", 
            "Lõpetus", 
            "Sõnavalik", 
            "Lausemoodustus (ühildumine, sõnajärg, rektsioon)", 
            "Kirjavahemärgistus",       
            "Õigekiri ja vormimoodustus", 
            "Liigendus ja vormistus"),
punktid = "Grade this on a scale of 0 to 3 points. Keep in mind this is just a text by an Estonian 9th grader. Use the following criteria to assess how many points to award, following this principle: if all the criteria are fulfilled then give 3 points but if something is lacking then lower points as described in this rubric:",
  mudel = c(
    pealkiri =
      "3 if: pealkiri haarav või kitsendab teemat ja seostub selgelt probleemipüstitusega, sissejuhatuses avatakse probleemi taust; probleemipüstitusena esitatakse üks selgelt sõnastatud põhiväide või -küsimus, mis loob aluse teemaarenduseks; anna 3 punkti isegi kui pealkiri pole haarav kuid sissejuhatus täidab kriteeriumid.
2 if: pealkiri seostub probleemipüstitusega; sissejuhatuses avatakse probleemi taust; probleemipüstituses esitatud põhiväide või põhiküsimus haakub teemaarendusega osaliselt või avatakse see üldsõnaliselt.
1 if: pealkiri üldsõnaline või puudub; probleemi taust avatakse osaliselt; probleemipüstituses esitatud põhiväide või põhiküsimus ebaselgelt sõnastatud, endastmõistetav või tõestamatu.
0 if: probleemipüstitus puudub.",
teemaalg =
  "3 if: alustekstidest toodud vähemalt 2 asjakohast näidet; osundatud tsitaadi või refereeringuga; näidet laiendatakse enda mõtetega.
2 if: alustekstidest toodud vähemalt 2 asjakohast näidet, aga osundatud ebaselgelt (nt tekstile või autorile ei viidata korrektselt); näidet laiendatakse enda mõtetega.
1 if: alustekstidest toodud vähemalt 1 asjakohane näide; osundatud ebaselgelt (nt tekstile või autorile ei viidata korrektselt); näidet ei seota enda mõtetega piisavalt selgelt.
0 if: alustekstidest ei ole näiteid toodud või pole need asjakohased; alusteksti võib olla kasutatud, kuid osundamine puudub.",
teemaarg =
  "3 if: alaväited selgelt sõnastatud ja seotud põhiväitega; alaväited esitatud loogilises järjekorras; kõiki näiteid selgitatud ja laiendatud, need on asjakohased; näidetest kasvavad loogiliselt välja lõikude järeldused; tekst on arutlev.
2 if: alaväited selgelt sõnastatud ja osaliselt seotud põhiväitega; alaväited esitatud loogilises järjekorras; kõiki näiteid selgitatud ja laiendatud, need on asjakohased; näidetest ei kasva selgelt välja järeldused; tekst on arutlev.
1 if: kõik alaväited pole selgelt sõnastatud; alaväited on osaliselt seotud põhiväitega; toodud näiteid osaliselt laiendatud; näidetest ei kasva välja järeldused; tekstil on valdavalt jutustav/kirjeldav iseloom; esineb üksikud kergemad faktivead.
0 if: argumentatsioon on seosetu või puudub, tekst on jutustav/kirjeldav; esineb küsitavusi/faktivead.",
lopetus =
  "3 if: sissejuhatuses püstitatud probleemile on vastatud; lõikude peamised järeldused on teises sõnastuses kokku võetud.
2 if: sissejuhatuses püstitatud probleemile on vastatud; lõikude peamisi järeldusi korratakse sissejuhatusele ja teemaarendusele ligilähedases sõnastuses.
1 if: sissejuhatuses püstitatud probleemile on vastatud osaliselt või tuuakse sisse uus teema; lõikude peamisi järeldusi korratakse sissejuhatuse ja teemaarendusega samas sõnastuses.
0 if: lõpetus pole teemaarenduse või sissejuhatusega seotud.",
sonavalik =
  "3 if: sõnavalik on isikupärane ja rikkalik; sõnavalik sobib kirjakeelsesse teksti; sõnastusraskusi ei esine.
2 if: sõnavalik mitmekesine, esineb üksikuid sõnakordusi; sõnavalik sobib kirjakeelsesse teksti; esineb üksikuid sõnastusraskusi.
1 if: sõnavalik ühekülgne, esineb palju sõnakordusi; sõnavalik sobib suuremalt jaolt kirjakeelsesse teksti; esineb palju sõnastusraskusi.
0 if: sõnavalik ei sobi kirjakeelsesse teksti ja sõnastusraskuste tõttu tekst arusaamatu.
Note that sõnakordus here means repeating the same content word close by where a synonym would flow better, for example toitu in \"Õpilased lähevad tihti poodi toitu ostma. Nad ostavad sealt ainult kommi kuna pood ei paku korralikku toitu.\"",
lausemoodustus =
  "3 if: laused on arusaadavad ja terviklikud; kasutatakse sidusaid ja erineva ülesehitusega lauseid; lausestuseksimusi ei esine.
2 if: laused arusaadavad ja terviklikud; kasutatakse sidusaid ja sarnase ülesehitusega lauseid; esineb üksikuid lausestuseksimusi.
1 if: laused suuremalt jaolt arusaadavad; kasutatakse suuremalt jaolt sidusaid lauseid, mille ülesehitus ühekülgne; esineb palju lausestuseksimusi.
0 if: laused ebaselged ja välja arendamata, lausestuseksimuste tõttu tekst arusaamatu.",
kirjavahe =
  "3 if: kirjavahemärgistus on täpne; võib esineda 0-1 viga kokku.
2 if: kirjavahemärgistus valdavalt täpne; võib esineda 2-3 viga kokku.
1 if: kirjavahemärgistuses esineb palju puudusi; võib esineda 4-5 viga kokku.
0 if: kirjavahemärgistus puudulik.
This aspect only refers to the correct usage of any punctuation like koma, jutumärgid, kriipsud, koolon, lauselõpumärgid, if and where relevant (but NOT lack of space after punctuation). Do not count repeated mistakes as new mistakes and do not be too harsh.",
oigekiri =
  "3 if: õigekiri ja vormimoodustus on korrektne; võib esineda 0-1 viga kokku.
2 if: valdavalt korrektne; 2-3 viga kokku.
1 if: palju puudusi; 4-5 viga kokku.
0 if: õigekiri ja vormimoodustus puudulik, 6 või enam viga.
Do not count repeated mistakes as new mistakes. This aspect only considers algustähed, sõnade kokku- ja lahkukirjutamine, häälikuortograafia, käänamine-pööramine. Ignore obvious typos like swapped letters and do not be too harsh.",
liigendus =
  "3 if: tekst on liigendatud; lõigud on proportsionaalsed; tekst on trükitud korrektselt, võib esineda 0-2 trükiviga.
2 if: tekst liigendatud; esineb üksik ebaproportsionaalne lõik; tekst trükitud valdavalt korrektselt, võib esineda mõningaid trükivigu (3-4).
1 if: tekst liigendatud ebakorrapäraselt; esineb mitu ebaproportsionaalset lõiku; tekst trükitud ebakorrektselt, leidub palju trükivigu (5 või enam).
0 if: tekst liigendamata (pole lõike) või tekst trükivigade tõttu arusaamatu.
Do not count repeated mistakes as new mistakes and do not be too harsh here. Also trükiviga means typo or accidental mistake like swapped letters so ignore morphology, syntax or spelling errors here. Proper lack of space after punctuation counts as one liigendus mistake."
  ),
siin = 'First explain your reasoning of relevant rubric criteria VERY briefly using keywords or phrases in Estonian in this comma-separated format:\n"Seletus: asjaolu: kirjeldus, asjaolu: kirjeldus, ... . Hinne: N"\nending with N points suitable grade. Express relevant asjaolud like "probleemile: vastatud", "laused: arusaadavad kuid esineb eksimusi", "õigekiri: palju puudusi; trükivigu: ei esine"). Do NOT provide text examples in your reasoning.\nEssay text begins here:\n\n"""'
) %>% 
  mutate(prompt=paste0(task, " ", tunnus, ". ", punktid, "\n\n", mudel, "\n\n", siin, "\n"))

paste0(prompt, Kirjand, '\n"""\n\nNow provide Seletus and Hinne for ', tunnus, '!'))
