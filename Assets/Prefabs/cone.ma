//Maya ASCII 2024 scene
//Name: cone.ma
//Last modified: Mon, Dec 08, 2025 02:36:00 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 "mtoa" "5.3.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Windows 11 Education v2009 (Build: 26100)";
fileInfo "UUID" "2BAB5A0A-4D3B-D5BC-E8EB-D1850C8FBFD6";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "1202AED7-4000-0C8A-A9E7-4F998F49CB64";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.0113227954527186 1.7850966761386187 4.511823345362922 ;
	setAttr ".r" -type "double3" -11.138352729622357 -698.59999999990987 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "03138EF3-49B0-AF88-2599-62A53A4B4ADA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 4.9813849366932175;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "AA825A3E-4317-96C9-C3D8-97A0B678DE12";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BE23AA1C-42D4-191D-A9E7-769FDC62C4A0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "3EE80491-4F16-0185-2913-B199116A0EA4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D0428AF7-4D45-116C-AFEC-70B50F8342C9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "0BC4927B-4C09-7B3A-CB2C-369CBCCDB9DD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D055E7C5-4624-C159-B392-F8B64DCA4D54";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pSphere1";
	rename -uid "C12C2EB7-4FE0-1E61-27D2-FAAD84C858F4";
	setAttr ".t" -type "double3" 0 0.27983925189903003 0 ;
	setAttr ".s" -type "double3" 0.76763443859151914 0.76763443859151914 0.76763443859151914 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "8B192E58-422A-A0B7-D931-D3BB7B1383B1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.87500014901161194 0.50000005960464478 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -0.060216002 0.55989337 0.0024909123 
		-0.0506755 0.55838513 0.0049482319 -0.035576589 0.55717635 0.0066605634 -0.016564103 
		0.55648464 0.006856265 0.0042282711 0.55585939 0.0054575508 0.024504341 0.55648464 
		0.0031844487 0.04213006 0.55717635 0.00097324868 0.055237819 0.55838513 -0.00022531237 
		0.062873982 0.55989337 -8.0116093e-05 0.064577751 0.56033152 -0.0011529316 0.060494505 
		0.55989337 -0.0035337301 0.051163077 0.55838513 -0.0067873853 0.037125658 0.55717635 
		-0.01010191 0.019499933 0.55648464 -0.012567637 1.9051127e-09 0.55585939 -0.013454013 
		-0.019499931 0.55648464 -0.012567637 -0.037356276 0.55717635 -0.010101932 -0.051666547 
		0.55838513 -0.0067873891 -0.060719427 0.55989337 -0.0035337207 -0.063647412 0.56033152 
		-0.00062030001 -0.10551298 0.49923021 0.011189751 -0.087730758 0.49883088 0.021279566 
		-0.060495201 0.49982119 0.027626326 -0.025901085 0.50049478 0.0271357 0.011738189 
		0.50014204 0.020356562 0.048085254 0.50049478 0.010828274 0.078572899 0.49982119 
		0.0023907502 0.099857159 0.49883088 -0.0013431072 0.11056881 0.49923021 -0.00053093833 
		0.11094451 0.49858332 -0.00049023353 0.10289968 0.49923021 -0.0048794108 0.086997867 
		0.49883088 -0.01319346 0.062980019 0.49982119 -0.022747053 0.033012923 0.50049478 
		-0.03017794 -0.00030703965 0.50014204 -0.032896042 -0.035267618 0.50049478 -0.030177955 
		-0.067460656 0.49982119 -0.022747038 -0.092249371 0.49883088 -0.013193453 -0.10856016 
		0.49923021 -0.0048794071 -0.1128839 0.49858332 0.0020808012 -0.12925199 0.42496264 
		0.025406836 -0.10470818 0.42946932 0.048244212 -0.070337489 0.43392828 0.060691543 
		-0.026693491 0.43636647 0.056578871 0.020176882 0.43703842 0.040262602 0.065391153 
		0.43636647 0.019867381 0.10182487 0.43392828 0.002598281 0.12421431 0.42946932 -0.0034214403 
		0.13164763 0.42496264 -0.0015269662 0.12737079 0.42295316 4.0028048e-09 0.11606179 
		0.42496264 -0.0041927481 0.097975925 0.42946932 -0.017793586 0.070692949 0.43392828 
		-0.035383433 0.036938265 0.43636647 -0.049702708 -0.0012500426 0.43703842 -0.055859037 
		-0.044463594 0.43636647 -0.050871782 -0.085809514 0.43392828 -0.035896432 -0.11653869 
		0.42946932 -0.017793572 -0.13590923 0.42496264 -0.004192749 -0.14076425 0.42295316 
		0.0058161314 -0.13369015 0.35142326 0.043217357 -0.10223621 0.35735503 0.082488962 
		-0.064658172 0.36344072 0.10132583 -0.020231143 0.36734444 0.090386175 0.027350347 
		0.3685931 0.061490849 0.073907405 0.36734444 0.028416462 0.10906459 0.36344072 0.0023807976 
		0.12530081 0.35735503 -0.0052930606 0.1233335 0.35142326 -0.0031740551 0.1113618 
		0.3489207 3.385298e-09 0.09834443 0.35142326 -0.00087276584 0.082934968 0.35735503 
		-0.017447188 0.059652768 0.36344072 -0.04349272 0.031092774 0.36734444 -0.067278393 
		-0.0022547101 0.3685931 -0.079660788 -0.046802077 0.36734444 -0.072288394 -0.092382766 
		0.36344072 -0.047199685 -0.12468204 0.35735503 -0.017894462 -0.14495374 0.35142326 
		-0.00087276305 -0.14956824 0.3489207 0.0095572425 -0.12622671 0.28063172 0.05969245 
		-0.087948889 0.28484321 0.11674453 -0.047431439 0.28934309 0.14202981 -0.0092404904 
		0.29241619 0.12216976 0.031968392 0.293457 0.079145201 0.074071512 0.29241619 0.033975851 
		0.1023143 0.28934309 0.0020051028 0.10672549 0.28484321 -0.0067182155 0.091220468 
		0.28063172 -0.0054377383 0.070737667 0.27888766 2.9996308e-09 0.058762822 0.28063172 
		0.0040742257 0.049487386 0.28484321 -0.011638729 0.035497032 0.28934309 -0.044059742 
		0.018463247 0.29241619 -0.078970499 -0.0033357686 0.293457 -0.099839225 -0.044554681 
		0.29241619 -0.090058386 -0.091192499 0.28934309 -0.053245045 -0.12176927 0.28484321 
		-0.01293619 -0.14161639 0.28063172 0.0040741977 -0.14591794 0.27888766 0.011877893 
		-0.11472147 0.20835252 0.069877177 -0.07053747 0.21012355 0.14302893 -0.025548907 
		0.21212833 0.17478581 0.0026941067 0.21360123 0.14680949 0.033939362 0.2141294 0.091083422 
		0.068780571 0.21360123 0.036276933 0.08725331 0.21212833 0.0022709446 0.077327557 
		0.21012355 -0.0084893433 0.047762781 0.20835252 -0.0081887878 0.020777376 0.20763999 
		6.6322898e-09 0.012424445 0.20835252 0.006229769 0.010349866 0.21012355 -0.00455028 
		0.0073218397 0.21212833 -0.038619932 0.0037647188 0.21360123 -0.082810543 -0.0042396495 
		0.2141294 -0.1139039 -0.041116696 0.21360123 -0.10206987 -0.087062836 0.21212833 
		-0.053152114 -0.11300159 0.21012355 -0.0042174514 -0.13100642 0.20835252 0.0081888102 
		-0.13602464 0.20763999 0.011457548 -0.10929366 0.13694546 0.074429527 -0.060251758 
		0.13754225 0.15998526 -0.0089143524 0.13774836 0.19639435 0.012198744 0.13809438 
		0.16353504 0.033939376 0.13831379 0.09915638 0.062133573 0.13809438 0.038116116 0.071872503 
		0.13774836 0.0049299854 0.049613357 0.13754225 -0.010397642 0.0091515267 0.13694546 
		-0.011233911 -0.021128379 0.13694546 6.5909043e-09 -0.025306828 0.13694546 0.0050469274 
		-0.021527272 0.13754225 2.2381253e-05 -0.015698584 0.13774836 -0.03121813 -0.0082669035 
		0.13809438 -0.080389008 -0.0051529482 0.13831379 -0.12266433 -0.040348068 0.13809438 
		-0.11002222 -0.085917518 0.13774836 -0.050406091 -0.10653768 0.13754225 0.0044787144 
		-0.12241456 0.13694546 0.01123392 -0.13054901 0.13694546 0.0095572453 -0.12766668 
		0.079351947 0.079423919 -0.069940098 0.079351947 0.17281704 -0.005934862 0.079351947 
		0.20942377 0.015564454 0.079351947 0.17607751 0.032375049 0.079351947 0.10916879 
		0.057639211 0.079351947 0.0459066 0.063464195 0.079351947 0.013402965 0.03493154 
		0.079351947 -0.0093709743 -0.010817428 0.079351947 -0.014034115 -0.041535869 0.079351947 
		-0.0013980602 -0.043192469 0.079351947 -0.00092504191 -0.036741737 0.079351947 -0.0033123805 
		-0.026694436 0.079351947 -0.028439522 -0.014034113 0.079351947 -0.078009434 -0.0066897376 
		0.079351947 -0.13059415 -0.046116687 0.079351947 -0.11974909 -0.094852716 0.079351947 
		-0.052203938 -0.11350662 0.079351947 0.0085565932 -0.13155003 0.079351947 0.014034104 
		-0.14780053 0.079351947 0.0087674493 -0.16921714 0.043670107 0.086105801 -0.098829076 
		0.043670107 0.18244611 -0.016249124 0.043670107 0.21524195 0.013833852 0.043670107 
		0.18812254 0.029229008 0.043670107 0.12620272 0.053146575 0.043670107 0.064730845;
	setAttr ".pt[166:331]" 0.05816111 0.043670107 0.03193593 0.028562337 0.043670107 
		-0.0011637734 -0.017533012 0.043670107 -0.014985642 -0.046377677 0.043670107 -0.0073504653 
		-0.046762012 0.043670107 -0.017217226 -0.039778113 0.043670107 -0.020914154 -0.028900523 
		0.043670107 -0.037030865 -0.01519388 0.043670107 -0.083970927 -0.0087653454 0.043670107 
		-0.14246783 -0.0559811 0.043670107 -0.13586384 -0.11005153 0.043670107 -0.063361838 
		-0.12989104 0.043670107 0.0042799027 -0.15698348 0.043670107 0.015193904 -0.18713875 
		0.043670107 0.0091260234 -0.21822517 0.030648913 0.087525435 -0.13575695 0.030648913 
		0.17998551 -0.03633767 0.030648913 0.21057637 0.0086124865 0.029580681 0.19586588 
		0.023940921 0.028351383 0.14671722 0.045602631 0.029580681 0.092393786 0.05035083 
		0.030648913 0.059845515 0.023229076 0.030648913 0.01457953 -0.018556282 0.030648913 
		-0.011957727 -0.042692311 0.030648913 -0.020966975 -0.042392705 0.030648913 -0.04708118 
		-0.036061466 0.030648913 -0.055856425 -0.026200175 0.030648913 -0.060924876 -0.013774246 
		0.030648913 -0.10158506 -0.010200934 0.030648913 -0.15618016 -0.063462034 0.030648913 
		-0.15558286 -0.12162849 0.030648913 -0.082617834 -0.14466128 0.030648913 -0.0092179039 
		-0.18714213 0.030648913 0.011926392 -0.23347868 0.030648913 0.0090362774 -0.25452378 
		0.03974681 0.074430563 -0.16753954 0.03974681 0.15404183 -0.061837967 0.037165485 
		0.18862171 -0.0011437782 0.030378634 0.19082598 0.016621284 0.026857626 0.16122445 
		0.035011463 0.030378634 0.12012322 0.039418489 0.037165485 0.089498669 0.018103246 
		0.03974681 0.033884224 -0.014094365 0.03974681 -0.0085636675 -0.030883761 0.03974681 
		-0.042720046 -0.030225312 0.03974681 -0.088015422 -0.02571119 0.03974681 -0.10516189 
		-0.018680243 0.03974681 -0.097451374 -0.0098207742 0.03974681 -0.12585522 -0.0091363816 
		0.03974681 -0.16707762 -0.061715111 0.03974681 -0.16966607 -0.12006007 0.03974681 
		-0.1035827 -0.15019919 0.03974681 -0.029980669 -0.20920302 0.03974681 0.0030929598 
		-0.26727927 0.03974681 0.0063149487 -0.25920221 0.066000521 0.045791887 -0.18230629 
		0.063894413 0.10704071 -0.084919423 0.052926894 0.14964315 -0.013593311 0.039497927 
		0.16932069 0.0085963737 0.03347633 0.16230229 0.023309696 0.039497927 0.13936059 
		0.02776416 0.052926894 0.11017575 0.014097045 0.063894413 0.049601603 -0.0050041736 
		0.066000521 -0.0080842488 -0.013075795 0.066000521 -0.066669948 -0.012435855 0.066000521 
		-0.1280655 -0.010578569 0.066000521 -0.15399095 -0.0076857908 0.066000521 -0.13506868 
		-0.0040406566 0.066000521 -0.14512461 -0.0049437447 0.066000521 -0.16812271 -0.047749847 
		0.066000521 -0.16877632 -0.099704146 0.066000521 -0.11693262 -0.13746889 0.066000521 
		-0.051266715 -0.2059404 0.066000521 -0.0085575934 -0.26770818 0.066000521 0.0013911504 
		-0.23902723 0.10961174 0.019716922 -0.18002225 0.093616918 0.059976041 -0.096579894 
		0.072923467 0.10329255 -0.024831299 0.054104872 0.13551009 0.0021636612 0.046189886 
		0.14873347 0.013729044 0.054104872 0.14506908 0.019453436 0.072923467 0.11572971 
		0.014718015 0.091747709 0.056906477 0.0085087726 0.10153912 -0.0094862254 0.0078519341 
		0.1021907 -0.081928775 0.0074675661 0.1021907 -0.15050113 0.006843816 0.10263082 
		-0.18189883 0.0061073275 0.10403009 -0.16207153 0.0035242781 0.10476513 -0.15364024 
		-0.00050345104 0.10569402 -0.15964991 -0.028783068 0.10476513 -0.15455791 -0.067488655 
		0.1021907 -0.11728417 -0.10688197 0.1021907 -0.062497735 -0.17395733 0.10263082 -0.017364163 
		-0.23670374 0.10776635 5.0725526e-09 -0.22937901 0.16975208 0.026093492 -0.18257712 
		0.14333254 0.047014125 -0.10299764 0.10796005 0.075312532 -0.033855557 0.08099167 
		0.10620336 -0.00076902541 0.071291827 0.13113426 0.012403264 0.080339596 0.14073783 
		0.024445977 0.10269362 0.11302054 0.032937557 0.12712659 0.061580673 0.038573243 
		0.14319159 -0.0050417366 0.04205161 0.14931373 -0.078997858 0.047443632 0.15400198 
		-0.14864901 0.051679682 0.16237716 -0.19144964 0.042329799 0.1672466 -0.19114828 
		0.022474175 0.16767289 -0.18020158 8.741905e-09 0.16702297 -0.1732742 -0.024667377 
		0.1648443 -0.16125566 -0.053748384 0.15946747 -0.12731501 -0.088517398 0.15556122 
		-0.073465616 -0.15111971 0.16034582 -0.029332932 -0.21455872 0.17168692 6.2950938e-09 
		-0.22760847 0.2140179 0.045672417 -0.18571863 0.1903777 0.07778924 -0.11494404 0.15877333 
		0.098454602 -0.047633961 0.13358498 0.12196037 -0.0016206627 0.12449525 0.1450693 
		0.029794201 0.13247909 0.14849046 0.058926955 0.15258886 0.12323691 0.084371544 0.17580217 
		0.078099117 0.10017118 0.19313638 0.01434001 0.1088362 0.20371574 -0.057770159 0.11417125 
		0.21065213 -0.12988061 0.11015891 0.21829376 -0.1851251 0.084753364 0.22209962 -0.20658776 
		0.044096209 0.22139199 -0.20682646 1.0024586e-08 0.21941894 -0.19782819 -0.041261546 
		0.21704274 -0.17936254 -0.074815564 0.21344408 -0.14426108 -0.11122836 0.21094264 
		-0.092653155 -0.16359952 0.21472247 -0.044011664 -0.21579973 0.22071892 3.9416892e-09 
		-0.2197009 0.23403172 0.057796787 -0.1831219 0.21786474 0.10510577 -0.12327786 0.19776255 
		0.13545382 -0.059444245 0.18152487 0.15669399 -0.001408534 0.17547445 0.16880496 
		0.048454773 0.1808034 0.16419172 0.093810678 0.19454494 0.13926762 0.13144813 0.21110462 
		0.097285472 0.15546493 0.22503027 0.037519511 0.16664428 0.23506871 -0.032608408 
		0.166236 0.24175929 -0.1047079 0.14955252 0.24570182 -0.16582897 0.11126282 0.2472579 
		-0.20205468 0.057629548 0.2462759 -0.21284643 6.8440089e-09 0.24468037 -0.20751961 
		-0.055068113 0.24336739 -0.18935172 -0.1032668 0.24216968 -0.15665843 -0.14766142 
		0.24166204 -0.10855421 -0.1893547 0.2429605 -0.055534206 -0.21976012 0.24198566 -4.6291557e-10 
		-0.19935347 0.23328042 0.059320875 -0.16850328 0.22383058 0.11112978 -0.119371 0.21337235 
		0.14947914 -0.060838968 0.20516126 0.17257676 -0.00069952349 0.20208661 0.18057448 
		0.055874053 0.20492443 0.17231369 0.10694411 0.21241084 0.14719592 0.14816079 0.22201197 
		0.10702127 0.17466412 0.23100181 0.051088046 0.18513313 0.23809993 -0.013978051 0.17927831 
		0.24290268 -0.079745412 0.15560152 0.24547289 -0.13726345;
	setAttr ".pt[332:381]" 0.11393159 0.24611069 -0.17757878 0.059320852 0.24568768 
		-0.19580257 6.2011627e-09 0.24502991 -0.1960461 -0.057983987 0.24470679 -0.18218015 
		-0.11003499 0.24454895 -0.1536852 -0.154511 0.24431138 -0.11057132 -0.18873061 0.24314687 
		-0.058573224 -0.20576677 0.23977888 -1.2930601e-09 -0.15487354 0.21924575 0.048666917 
		-0.13165623 0.21441317 0.092235506 -0.0949082 0.20967422 0.12626071 -0.049326941 
		0.20617858 0.1478049 -0.00013047605 0.20489636 0.15520437 0.047989108 0.20614941 
		0.14769524 0.091348387 0.20952258 0.12573029 0.12606075 0.2141915 0.091588497 0.14830856 
		0.21898209 0.04668748 0.15625158 0.22314164 -0.0040579569 0.14924015 0.22624131 -0.054783665 
		0.12753247 0.22820795 -0.099737719 0.092806756 0.22923242 -0.1337308 0.048666894 
		0.2296228 -0.15332991 5.8382787e-09 0.22970149 -0.1579023 -0.048359957 0.22952169 
		-0.14883669 -0.091986105 0.22908622 -0.126608 -0.12743723 0.228095 -0.092060968 -0.15176934 
		0.22625802 -0.048532676 -0.16164792 0.2233191 2.1579509e-10 -0.084975183 0.20306808 
		0.027430054 -0.072304443 0.20116648 0.052159473 -0.052412696 0.19949587 0.071791343 
		-0.027463589 0.19833364 0.084329762 2.4890826e-10 0.1979215 0.088669568 0.027400402 
		0.19833364 0.084329769 0.052118666 0.1994867 0.071735188 0.071791328 0.20116648 0.052159451 
		0.084395774 0.20306599 0.027421847 0.088738948 0.2049173 -0.00032687568 0.084395774 
		0.20651647 -0.028051216 0.071812794 0.20775579 -0.052859109 0.052175049 0.20860474 
		-0.072441921 0.027421849 0.20909871 -0.084647939 2.8951872e-09 0.20925736 -0.088738933 
		-0.027421836 0.20909871 -0.084395751 -0.052159432 0.20860477 -0.071791314 -0.071791314 
		0.20775546 -0.05215944 -0.084534727 0.20651647 -0.02742184 -0.089210175 0.20491864 
		0 0.00019276538 0.59010714 -0.0014648957 1.8626451e-09 0.19610468 0;
createNode transform -n "pCone1";
	rename -uid "2393E5DA-4011-00ED-B2E8-F5A1BAA30063";
	setAttr ".t" -type "double3" 0 1.7588997161795086 0 ;
	setAttr ".r" -type "double3" 0 0 180 ;
	setAttr ".s" -type "double3" 0.79625577357456245 0.79625577357456245 0.79625577357456245 ;
createNode mesh -n "pConeShape1" -p "pCone1";
	rename -uid "7CD01344-4B67-C746-FB75-8B86936D7386";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.60112708806991577 0.49388207495212555 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 62 ".pt[0:61]" -type "float3"  -0.66861898 1.3351388 0.2201132 
		-0.56653607 1.3265767 0.41868037 -0.40754005 1.313241 0.5762639 -0.20719272 1.2964375 
		0.67743933 0.014893914 1.2778105 0.71230125 0.23698053 1.259183 0.67743933 0.43732765 
		1.2423794 0.57626373 0.59632385 1.2290437 0.41868019 0.69840628 1.220482 0.2201131 
		0.73358095 1.2175316 -1.2736939e-07 0.69840628 1.220482 -0.22011344 0.59632379 1.2290437 
		-0.41868049 0.43732753 1.2423794 -0.5762639 0.23698045 1.259183 -0.67743933 0.010753895 
		1.2971313 -0.71230125 -0.22228783 1.3436301 -0.67743933 -0.42457578 1.3643616 -0.57626384 
		-0.58163118 1.3686397 -0.41868043 -0.6727584 1.3544596 -0.22011338 -0.70379281 1.3380888 
		-1.2736939e-07 -0.4928703 0.76099813 0.15569165 -0.42079276 0.75615227 0.29614285 
		-0.30853075 0.74860424 0.40760514 -0.16707204 0.73909301 0.47916919 -0.010263457 
		0.72855026 0.50382775 0.14654519 0.71800715 0.47916913 0.28800386 0.70849615 0.40760541 
		0.40026596 0.70094824 0.29614273 0.47234312 0.69610202 0.15569158 0.49717855 0.69443214 
		-9.0091426e-08 0.47234312 0.69610202 -0.1556918 0.4002659 0.70094824 -0.29614288 
		0.2880038 0.70849615 -0.40760514 0.14654513 0.71800715 -0.47916919 -0.011113521 0.73251742 
		-0.50382775 -0.17038916 0.75457406 -0.47916913 -0.31316128 0.7702148 -0.40760508 
		-0.42410961 0.77163321 -0.29614285 -0.49372002 0.76496553 -0.15569176 -0.51770544 
		0.76266795 -9.0091426e-08 -0.23168309 0.18800162 0.075278342 -0.19708145 0.18800162 
		0.14318798 -0.14318803 0.18800162 0.19708133 -0.075278416 0.18800162 0.23168302 -3.2670076e-08 
		0.18800162 0.24360585 0.075278342 0.18800162 0.23168299 0.14318797 0.18800162 0.19708131 
		0.19708131 0.18800162 0.14318793 0.23168296 0.18800162 0.075278297 0.24360579 0.18800162 
		-4.3560124e-08 0.23168296 0.18800162 -0.075278401 0.19708131 0.18800162 -0.143188 
		0.14318793 0.18800162 -0.19708133 0.075278312 0.18800162 -0.23168302 -2.5410063e-08 
		0.18800162 -0.24360585 -0.075278372 0.18800162 -0.23168299 -0.14318797 0.18800162 
		-0.19708131 -0.19708131 0.18800162 -0.14318798 -0.23168299 0.18800162 -0.075278394 
		-0.24360579 0.18800162 -4.3560124e-08 -4.0113093e-08 1.4935052 -5.0617182e-08 0 0 
		0;
createNode transform -n "pCylinder1";
	rename -uid "6EDF013F-4DD5-4D5E-1DB0-EFAB32B827EA";
	setAttr ".t" -type "double3" 0 1.2028752306817228 0 ;
	setAttr ".r" -type "double3" -5.339506914402425 -0.1433490385591272 -1.5333888719901698 ;
	setAttr ".s" -type "double3" 0.086585505794140399 0.01768830082988089 0.086585505794140399 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "421B67CB-4076-A8F2-B704-59A96FC75B3B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D4733A6A-4469-20C4-1586-F5A99E26E6C0";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A134C979-4FB1-22A7-B445-1E9B41C0CC45";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2D8682B6-4655-BA4D-49ED-0A8B5FBF20E4";
createNode displayLayerManager -n "layerManager";
	rename -uid "2151BA5F-406B-0EEA-ADB5-958FB7DA3FC8";
createNode displayLayer -n "defaultLayer";
	rename -uid "5BF09900-48AF-BEF9-9175-7A8EDF2B8FB7";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5EE8AAF9-4CA8-8F35-9607-AD852B6306DF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "27195CAA-4619-8DFC-7C77-5CA3E35D8C54";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "255697D0-4987-2DF9-4680-B0A9E75B8535";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "A30E65EE-42C1-DBAB-4E63-0B93A92FCBF5";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "7F71F7E7-4679-71FB-5E01-99AEBB79FAFF";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "4CCED395-4442-D7A2-6089-D2A5D49991E0";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0279D0C3-41DC-A847-866B-7AAD158420A7";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n"
		+ "            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n"
		+ "            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n"
		+ "            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1759\n            -height 1070\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n"
		+ "            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1759\\n    -height 1070\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1759\\n    -height 1070\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B8178997-496D-F80E-9277-3192236F53E5";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySphere -n "polySphere1";
	rename -uid "30277DF0-41C4-730B-C473-B18FF2F019FF";
createNode polyCone -n "polyCone1";
	rename -uid "D7AAB11F-40A7-5589-2E7F-94ABA07033F4";
	setAttr ".sh" 3;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "B2A23EF1-4DA2-D325-2B20-66BC7F76D56D";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode aiStandardSurface -n "bag_texture";
	rename -uid "90686625-4692-8C26-7EF8-05A4F262D082";
	setAttr ".base_color" -type "float3" 0.93379998 0.87300003 0.5126 ;
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "0BB6C6B8-4AA4-631B-1F32-D38384262B8A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "9D8E5632-4907-019D-5EDD-E29B51F7B6FE";
createNode aiStandardSurface -n "band_texture";
	rename -uid "BE8C0016-49B6-5314-216F-DEBDA786741C";
	setAttr ".base_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "aiStandardSurface2SG";
	rename -uid "B05AB3D5-4C83-C795-A45C-84849711054C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "54B5D594-4581-07A6-7A34-A39A96A10063";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polySphere1.out" "pSphereShape1.i";
connectAttr "polyCone1.out" "pConeShape1.i";
connectAttr "polyCylinder1.out" "pCylinderShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "bag_texture.out" "aiStandardSurface1SG.ss";
connectAttr "pSphereShape1.iog" "aiStandardSurface1SG.dsm" -na;
connectAttr "pConeShape1.iog" "aiStandardSurface1SG.dsm" -na;
connectAttr "aiStandardSurface1SG.msg" "materialInfo1.sg";
connectAttr "bag_texture.msg" "materialInfo1.m";
connectAttr "bag_texture.msg" "materialInfo1.t" -na;
connectAttr "band_texture.out" "aiStandardSurface2SG.ss";
connectAttr "pCylinderShape1.iog" "aiStandardSurface2SG.dsm" -na;
connectAttr "aiStandardSurface2SG.msg" "materialInfo2.sg";
connectAttr "band_texture.msg" "materialInfo2.m";
connectAttr "band_texture.msg" "materialInfo2.t" -na;
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "bag_texture.msg" ":defaultShaderList1.s" -na;
connectAttr "band_texture.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of cone.ma
