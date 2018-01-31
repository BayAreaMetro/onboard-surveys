* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* BuildDatabases.sas                                                    
*                                                                                            
* Purpose: Read in survey records and store in SAS database.  Specific to AC Transit. 
*
* Location: M:\Data\OnBoard\Data and Reports\
*
* Author(s): dto (2014 03 12)
*
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

* Create a working library;
libname OnBoard 'M:\Data\OnBoard\Data and Reports\SAS data';
run;

* Set the name of the raw data files;
%let weekday_cati_file = 'M:\Data\OnBoard\Data and Reports\AC Transit\Redhill Data as CSV\AC TRANSIT WEEKDAY CATI DATA.csv';
%let weekend_cati_file = 'M:\Data\OnBoard\Data and Reports\AC Transit\Redhill Data as CSV\AC TRANSIT WEEKEND CATI DATA.csv';

%let weekday_gis_file = 'M:\Data\OnBoard\Data and Reports\AC Transit\Redhill Data as CSV\AC TRANSIT WEEKDAY GIS DATA.csv';
%let weekend_gis_file = 'M:\Data\OnBoard\Data and Reports\AC Transit\Redhill Data as CSV\AC TRANSIT WEEKEND GIS DATA.csv';

%let weekday_info_file = 'M:\Data\OnBoard\Data and Reports\AC Transit\Redhill Data as CSV\AC TRANSIT WEEKDAY INFO FILE.csv';
%let weekend_info_file = 'M:\Data\OnBoard\Data and Reports\AC Transit\Redhill Data as CSV\AC TRANSIT WEEKEND INFO FILE.csv';

%let weekday_dow_file = 'M:\Data\OnBoard\Data and Reports\AC Transit\Redhill Data as CSV\AC TRANSIT DOW WEEKDAY.csv';
%let weekend_dow_file = 'M:\Data\OnBoard\Data and Reports\AC Transit\Redhill Data as CSV\AC TRANSIT DOW WEEKEND.csv';

run;


* Read in the raw cati weekday data file;
data input; infile "&weekday_cati_file." delimiter = ',' missover scanover dsd
            lrecl = 32767 firstobs = 2;

			format id best12.;
			format q1 best12.;
			format q2 best12.;
			format q3 $60.;
			format q4 best12.;
			format q5 best12.;
			format q6 best12.;
			format q7 best12.;
			format q8 best12.;
			format q9 best12.;
			format q10 best12.;

			format q11 best12.;
			format q12 best12.;
			format q13 best12.;
			format q15 best12.;
			format q16 best12.;
			format q16_other $30.;
			format q17 best12.;
			format q17_other $30.;
			format q18 best12.;
			format q19 best12.;
			format q20 best12.;

			format q21 best12.;
			format q21_other $30.;
			format q22 best12.;
			format q22_other $30.;
			format q23 best12.;
			format q23_other $30.;
			format q24 best12.;
			format q24_other $30.;
			format q25 best12.;
			format q26 best12.;
			format q27 best12.;
			format q27_other $30.;
			format q28 best12.;
			format q28_other $30.;
			format q29 best12.;
			format q30 best12.;

			format q31 best12.;
			format q31_other $30.;
			format q32 best12.;
			format q32_other $30.;
			format q33 best12.;
			format q33_other $30.;
			format q34 best12.;
			format q34_other $30.;
			format q35 best12.;
			format q35_other $30.;
			format q36 best12.;
			format q36_other $30.;
			format q37 best12.;
			format q37_other $30.;
			format q38 best12.;
			format q38_other $30.;
			format q39 best12.;
			format q39_other $30.;
			format q40 best12.;
			format q40_other $30.;

			format q41 best12.;
			format q41_other $30.;
			format q42 best12.;
			format q42_other $30.;
			format q43 best12.;
			format q43_other $30.;
			format q44 best12.;
			format q44_other $30.;
			format q45 best12.;
			format q45_other $30.;
			format q46 best12.;
			format q46_other $30.;
			format q47 best12.;
			format q47_other $30.;
			format q48 best12.;
			format q48_other $30.;
			format q49 best12.;
			format q49_other $30.;
			format q50 best12.;
			format q50_other $30.;

			format q51 best12.;
			format q51_other $30.;
			format q52 best12.;
			format q52_other $30.;
			format q53 best12.;
			format q53_other $30.;
			format q54 best12.;
			format q54_other $30.;
			format q55 best12.;
			format q55_other $30.;
			format q56 best12.;
			format q56_other $30.;
			format q57 best12.;
			format q57_other $30.;
			format q58 best12.;
			format q58_other $30.;
			format q59 best12.;
			format q59_other $30.;
			format q60 $20.;

			format q61 best12.;
			format q62 best12.;
			format q63 best12.;
			format q64 best12.;
			format q65 best12.;
			format q66 best12.;
			format q66_other $30.;
			format q67 best12.;
			format q67_other $30.;
			format q68 best12.;
			format q68_other $30.;
			format q69 best12.;
			format q69_other $30.;
			format q70 best12.;

			format q71 best12.;
			format q72 best12.;
			format q72_other $30.;
			format q73 best12.;
			format q73_other $30.;
			format q74 best12.;
			format q75 best12.;
			format q76 best12.;
			format q76_other $30.;
			format q77 best12.;
			format q77_other $30.;
			format q78 best12.;
			format q78_other $30.;
			format q79 best12.;
			format q79_other $30.;
			format q80 best12.;
			format q80_other $30.;

			format q81 best12.;
			format q81_other $30.;
			format q82 best12.;
			format q82_other $30.;
			format q83 best12.;
			format q83_other $30.;
			format q84 best12.;
			format q84_other $30.;
			format q85 best12.;
			format q85_other $30.;
			format q86 best12.;
			format q86_other $30.;
			format q87 best12.;
			format q87_other $30.;
			format q88 best12.;
			format q88_other $30.;
			format q89 best12.;
			format q89_other $30.;
			format q90 best12.;
			format q90_other $30.;

			format q91 best12.;
			format q91_other $30.;
			format q92 best12.;
			format q92_other $30.;
			format q93 best12.;
			format q93_other $30.;
			format q94 best12.;
			format q94_other $30.;
			format q95 best12.;
			format q95_other $30.;
			format q96 best12.;
			format q96_other $30.;
			format q97 best12.;
			format q97_other $30.;
			format q98 best12.;
			format q98_other $30.;
			format q99 best12.;
			format q99_other $30.;
			format q100 best12.;
			format q100_other $30.;

			format q101 best12.;
			format q101_other $30.;
			format q102 best12.;
			format q102_other $30.;
			format q103 best12.;
			format q103_other $30.;
			format q104 best12.;
			format q104_other $30.;
			format q105 best12.;
			format q106 best12.;
			format q107 best12.;
			format q108 best12.;
			format q109 best12.;
			format q110 best12.;

			format q111 best12.;
			format q111_other $30.;
			format q112 best12.;
			format q112_other $30.;
			format q113 best12.;
			format q113_other $30.;
			format q114 best12.;
			format q114_other $30.;
			format q115 best12.;
			format q116 best12.;
			format q117 best12.;
			format q117_other $30.;
			format q118 best12.;
			format q118_other $30.;
			format q119 best12.;
			format q120 best12.;

			format q121 best12.;
			format q121_other $30.;
			format q122 best12.;
			format q122_other $30.;
			format q123 best12.;
			format q123_other $30.;
			format q124 best12.;
			format q124_other $30.;
			format q125 best12.;
			format q125_other $30.;
			format q126 best12.;
			format q126_other $30.;
			format q127 best12.;
			format q127_other $30.;
			format q128 best12.;
			format q128_other $30.;
			format q129 best12.;
			format q129_other $30.;
			format q130 best12.;
			format q130_other $30.;

			format q131 best12.;
			format q131_other $30.;
			format q132 best12.;
			format q132_other $30.;
			format q133 best12.;
			format q133_other $30.;
			format q134 best12.;
			format q134_other $30.;
			format q135 best12.;
			format q135_other $30.;
			format q136 best12.;
			format q136_other $30.;
			format q137 best12.;
			format q137_other $30.;
			format q138 best12.;
			format q138_other $30.;
			format q139 best12.;
			format q139_other $30.;
			format q140 best12.;
			format q140_other $30.;

			format q141 best12.;
			format q141_other $30.;
			format q142 best12.;
			format q142_other $30.;
			format q143 best12.;
			format q143_other $30.;
			format q144 best12.;
			format q144_other $30.;
			format q145 best12.;
			format q145_other $30.;
			format q146 best12.;
			format q146_other $30.;
			format q147 best12.;
			format q147_other $30.;
			format q148 best12.;
			format q148_other $30.;
			format q149 best12.;
			format q149_other $30.;
			format q150 best12.;

			format q151 best12.;
			format q152 best12.;
			format q153 best12.;
			format q154 best12.;
			format q155 best12.;
			format q156 best12.;
			format q156_other $30.;
			format q157 best12.;
			format q157_other $30.;
			format q158 best12.;
			format q158_other $30.;
			format q159 best12.;
			format q159_other $30.;
			format q160 best12.;

			format q161 best12.;
			format q162 best12.;
			format q162_other $30.;
			format q163 best12.;
			format q163_other $30.;
			format q164 best12.;
			format q165 best12.;
			format q166 best12.;
			format q166_other $30.;
			format q167 best12.;
			format q167_other $30.;
			format q168 best12.;
			format q168_other $30.;
			format q169 best12.;
			format q169_other $30.;
			format q170 best12.;
			format q170_other $30.;

			format q171 best12.;
			format q171_other $30.;
			format q172 best12.;
			format q172_other $30.;
			format q173 best12.;
			format q173_other $30.;
			format q174 best12.;
			format q174_other $30.;
			format q175 best12.;
			format q175_other $30.;
			format q176 best12.;
			format q176_other $30.;
			format q177 best12.;
			format q177_other $30.;
			format q178 best12.;
			format q178_other $30.;
			format q179 best12.;
			format q179_other $30.;
			format q180 best12.;
			format q180_other $30.;

			format q181 best12.;
			format q181_other $30.;
			format q182 best12.;
			format q182_other $30.;
			format q183 best12.;
			format q183_other $30.;
			format q184 best12.;
			format q184_other $30.;
			format q185 best12.;
			format q185_other $30.;
			format q186 best12.;
			format q186_other $30.;
			format q187 best12.;
			format q187_other $30.;
			format q188 best12.;
			format q188_other $30.;
			format q189 best12.;
			format q189_other $30.;
			format q190 best12.;
			format q190_other $30.;

			format q191 best12.;
			format q191_other $30.;
			format q192 best12.;
			format q192_other $30.;
			format q193 best12.;
			format q193_other $30.;
			format q194 best12.;
			format q194_other $30.;
			format q195 best12.;
			format q196 best12.;
			format q197 best12.;
			format q198 best12.;
			format q199 best12.;
			format q200 best12.;

			format q201 best12.;
			format q201_other $30.;
			format q202 best12.;
			format q202_other $30.;
			format q203 best12.;
			format q203_other $30.;
			format q204 best12.;
			format q204_other $30.;
			format q205 best12.;
			format q206 best12.;
			format q207 best12.;
			format q207_other $30.;
			format q208 best12.;
			format q208_other $30.;
			format q209 best12.;
			format q210 best12.;

			format q211 best12.;
			format q211_other $30.;
			format q212 best12.;
			format q212_other $30.;
			format q213 best12.;
			format q213_other $30.;
			format q214 best12.;
			format q214_other $30.;
			format q215 best12.;
			format q215_other $30.;
			format q216 best12.;
			format q216_other $30.;
			format q217 best12.;
			format q217_other $30.;
			format q218 best12.;
			format q218_other $30.;
			format q219 best12.;
			format q219_other $30.;
			format q220 best12.;
			format q220_other $30.;

			format q221 best12.;
			format q221_other $30.;
			format q222 best12.;
			format q222_other $30.;
			format q223 best12.;
			format q223_other $30.;
			format q224 best12.;
			format q224_other $30.;
			format q225 best12.;
			format q225_other $30.;
			format q226 best12.;
			format q226_other $30.;
			format q227 best12.;
			format q227_other $30.;
			format q228 best12.;
			format q228_other $30.;
			format q229 best12.;
			format q229_other $30.;
			format q230 best12.;
			format q230_other $30.;

			format q231 best12.;
			format q231_other $30.;
			format q232 best12.;
			format q232_other $30.;
			format q233 best12.;
			format q233_other $30.;
			format q234 best12.;
			format q234_other $30.;
			format q235 best12.;
			format q235_other $30.;
			format q236 best12.;
			format q236_other $30.;
			format q237 best12.;
			format q237_other $30.;
			format q238 best12.;
			format q238_other $30.;
			format q239 best12.;
			format q239_other $30.;
			format q240 best12.;

			format q241 best12.;
			format q242 best12.;
			format q243 best12.;
			format q244 best12.;
			format q245 best12.;
			format q246 best12.;
			format q246_other $30.;
			format q247 best12.;
			format q247_other $30.;
			format q248 best12.;
			format q248_other $30.;
			format q249 best12.;
			format q249_other $30.;
			format q250 best12.;

			format q251 best12.;
			format q252 best12.;
			format q252_other $30.;
			format q253 best12.;
			format q253_other $30.;
			format q254 best12.;
			format q255 best12.;
			format q256 best12.;
			format q256_other $30.;
			format q257 best12.;
			format q257_other $30.;
			format q258 best12.;
			format q258_other $30.;
			format q259 best12.;
			format q259_other $30.;
			format q260 best12.;
			format q260_other $30.;

			format q261 best12.;
			format q261_other $30.;
			format q262 best12.;
			format q262_other $30.;
			format q263 best12.;
			format q263_other $30.;
			format q264 best12.;
			format q264_other $30.;
			format q265 best12.;
			format q265_other $30.;
			format q266 best12.;
			format q266_other $30.;
			format q267 best12.;
			format q267_other $30.;
			format q268 best12.;
			format q268_other $30.;
			format q269 best12.;
			format q269_other $30.;
			format q270 best12.;
			format q270_other $30.;

			format q271 best12.;
			format q271_other $30.;
			format q272 best12.;
			format q272_other $30.;
			format q273 best12.;
			format q273_other $30.;
			format q274 best12.;
			format q274_other $30.;
			format q275 best12.;
			format q275_other $30.;
			format q276 best12.;
			format q276_other $30.;
			format q277 best12.;
			format q277_other $30.;
			format q278 best12.;
			format q278_other $30.;
			format q279 best12.;
			format q279_other $30.;
			format q280 best12.;
			format q280_other $30.;

			format q281 best12.;
			format q281_other $30.;
			format q282 best12.;
			format q282_other $30.;
			format q283 best12.;
			format q283_other $30.;
			format q284 best12.;
			format q284_other $30.;
			format q285 $20.;
			format q286 best12.;
			format q287 best12.;
			format q288 best12.;
			format q289 best12.;
			format q290 best12.;

			format q291 best12.;
			format q291_other $30.;
			format q292 best12.;
			format q292_other $30.;
			format q293 best12.;
			format q293_other $30.;
			format q294 best12.;
			format q294_other $30.;
			format q295 best12.;
			format q296 best12.;
			format q297 best12.;
			format q297_other $30.;
			format q298 best12.;
			format q298_other $30.;
			format q299 best12.;
			format q300 best12.;

			format q301 best12.;
			format q301_other $30.;
			format q302 best12.;
			format q302_other $30.;
			format q303 best12.;
			format q303_other $30.;
			format q304 best12.;
			format q304_other $30.;
			format q305 best12.;
			format q305_other $30.;
			format q306 best12.;
			format q306_other $30.;
			format q307 best12.;
			format q307_other $30.;
			format q308 best12.;
			format q308_other $30.;
			format q309 best12.;
			format q309_other $30.;
			format q310 best12.;
			format q310_other $30.;

			format q311 best12.;
			format q311_other $30.;
			format q312 best12.;
			format q312_other $30.;
			format q313 best12.;
			format q313_other $30.;
			format q314 best12.;
			format q314_other $30.;
			format q315 best12.;
			format q315_other $30.;
			format q316 best12.;
			format q316_other $30.;
			format q317 best12.;
			format q317_other $30.;
			format q318 best12.;
			format q318_other $30.;
			format q319 best12.;
			format q319_other $30.;
			format q320 best12.;
			format q320_other $30.;

			format q321 best12.;
			format q321_other $30.;
			format q322 best12.;
			format q322_other $30.;
			format q323 best12.;
			format q323_other $30.;
			format q324 best12.;
			format q324_other $30.;
			format q325 best12.;
			format q325_other $30.;
			format q326 best12.;
			format q326_other $30.;
			format q327 best12.;
			format q327_other $30.;
			format q328 best12.;
			format q328_other $30.;
			format q329 best12.;
			format q329_other $30.;
			format q330 best12.;

			format q331 best12.;
			format q332 best12.;
			format q333 best12.;
			format q334 best12.;
			format q335 best12.;
			format q336 best12.;
			format q336_other $30.;
			format q337 best12.;
			format q337_other $30.;
			format q338 best12.;
			format q338_other $30.;
			format q339 best12.;
			format q339_other $30.;
			format q340 best12.;

			format q341 best12.;
			format q342 best12.;
			format q342_other $30.;
			format q343 best12.;
			format q343_other $30.;
			format q344 best12.;
			format q345 best12.;
			format q346 best12.;
			format q346_other $30.;
			format q347 best12.;
			format q347_other $30.;
			format q348 best12.;
			format q348_other $30.;
			format q349 best12.;
			format q349_other $30.;
			format q350 best12.;
			format q350_other $30.;

			format q351 best12.;
			format q351_other $30.;
			format q352 best12.;
			format q352_other $30.;
			format q353 best12.;
			format q353_other $30.;
			format q354 best12.;
			format q354_other $30.;
			format q355 best12.;
			format q355_other $30.;
			format q356 best12.;
			format q356_other $30.;
			format q357 best12.;
			format q357_other $30.;
			format q358 best12.;
			format q358_other $30.;
			format q359 best12.;
			format q359_other $30.;
			format q360 best12.;
			format q360_other $30.;

			format q361 best12.;
			format q361_other $30.;
			format q362 best12.;
			format q362_other $30.;
			format q363 best12.;
			format q363_other $30.;
			format q364 best12.;
			format q364_other $30.;
			format q365 best12.;
			format q365_other $30.;
			format q366 best12.;
			format q366_other $30.;
			format q367 best12.;
			format q367_other $30.;
			format q368 best12.;
			format q368_other $30.;
			format q369 best12.;
			format q369_other $30.;
			format q370 best12.;
			format q370_other $30.;

			format q371 best12.;
			format q371_other $30.;
			format q372 best12.;
			format q372_other $30.;
			format q373 best12.;
			format q373_other $30.;
			format q374 best12.;
			format q374_other $30.;
			format q375 best12.;
			format q376 best12.;
			format q377 best12.;
			format q378 best12.;
			format q379 best12.;
			format q379_other $30.;
			format q380 best12.;
			format q380_other $30.;

			format q381 best12.;
			format q382 best12.;
			format q383 best12.;
			format q384 $60.;
			format q385 best12.;
			format q386 best12.;
			format q387 $60.;
			format q388 best12.;
			format q389 $60.;
			format q390 best12.;

			format q391 best12.;
			format q392 best12.;
			format q393 time12.;
			format q394 best12.;
			format q395 time12.;
			format q396 best12.;
			format q397 best12.;
			format q397_other $60.;
			format q398 best12.;
			format q398_other $60.;
			format q399 best12.;
			format q399_other $60.;
			format q400 $60.;
			format q400_one best12.;
			format q400_two best12.;
			format q400_thr best12.;
			format q400_for best12.;
			format q400_fiv best12.;
			format q400_six best12.;
			format q400_other $60.;

			format q401 best12.;
			format q402 best12.;
			format q403 best12.;
			format q403_other $60.;
			format q404 best12.;
			format q404_other $60.;
			format q405 best12.;
			format q406 best12.;
			format q407 best12.;
			format q407_other $60.;
			format q408 best12.;
			format q409 $60.;
			format q409_one best12.;
			format q409_two best12.;
			format q409_thr best12.;
			format q409_for best12.;
			format q409_fiv best12.;
			format q409_six best12.;
			format q409_other $60.;
			format q410 best12.;

			format q411 best12.;
			format q412 best12.;
			format q413 best12.;
			format q414 best12.;
			format q450 best12.;
			format q450_other $150.;

			format q451 best12.;
			format q451_other $150.;
			format q452 best12.;
			format q452_other $150.;
			format q453 best12.;
			format q453_other $150.;
			format q454 best12.;
			format q454_other $150.;
			format q455 best12.;
			format q455_other $150.;
			format q456 best12.;
			format q456_other $150.;

			format route $20.;
			format direction $15.;
			format daypart_code best12.;
			format daypart $20.;
			format work_tour_code best12.;
			format work_tour $150.;
			format trip_purp_code best12.;
			format trip_purp $60.;
			format hb_trip_purp_code best12.;
			format hb_trip_purp $60.;
			format nhb_trip_code best12.;
			format nhb_trip $60.;
			format origin_type_code best12.;
			format origin_type $60.;
			format dest_type_code best12.;
			format dest_type $60.;

			format hb_access_code best12.;
			format hb_access $60.;
			format hb_access_min best12.;
			format hb_access_cat_time_code best12.;
			format hb_access_cat_time $20.;
			format hb_access_q16_recode best12.;
			format hb_access_q16 $20.;
			format hb_access_mile best12.;
			format hb_access_dist_cat_code best12.;
			format hb_access_dist_cat $20.;
			format hb_access_q17_recode best12.;
			format hb_access_q17 $20.;

			format hb_egress_code best12.;
			format hb_egress $60.;
			format hb_egress_min best12.;
			format hb_egress_cat_time_code best12.;
			format hb_egress_cat_time $20.;
			format hb_egress_q379_recode best12.;
			format hb_access_q379 $20.;
			format hb_egress_mile best12.;
			format hb_egress_dist_cat_code best12.;
			format hb_egress_dist_cat $20.;
			format hb_egress_q380_recode best12.;
			format hb_egress_q380 $20.;

			format employed_code best12.;
			format employed $30.;
			format student_code best12.;
			format sudent $30.;
			format employed_or_student_code best12.;
			format employed_or_student $30.;
			format fare_type_q397_code best12.;
			format fare_type_q397 $30.;
			format clipper_code best12.;
			format clipper $30.;
			format why_not_clipper_q399_code best12.;
			format why_not_clipper $60.;

			format workers_in_hh_q403_code best12.;
			format workers_in_hh_q403 $30.;
			format vehicles_in_hh_q404_code best12.;
			format vehicles_in_hh_q404 $30.;
			format age_group_q405_code best12.;
			format age_group_q405 $20.;
			format hispanic_q406_code best12.;
			format hispanic_q406 $120.;
			format race_q407_code best12.;
			format race_q407 $30.;
			format language_q409_code best12.;
			format language_q409 $30.;

			format income_code best12.;
			format income $30.;
			format trip_legs_code best12.;
			format trip_legs $30.;
			format weight best12.;

			informat id best32.;
			informat q1 best32.;
			informat q2 best32.;
			informat q3 $60.;
			informat q4 best32.;
			informat q5 best32.;
			informat q6 best32.;
			informat q7 best32.;
			informat q8 best32.;
			informat q9 best32.;
			informat q10 best32.;

			informat q11 best32.;
			informat q12 best32.;
			informat q13 best32.;
			informat q15 best32.;
			informat q16 best32.;
			informat q16_other $30.;
			informat q17 best32.;
			informat q17_other $30.;
			informat q18 best32.;
			informat q19 best32.;
			informat q20 best32.;

			informat q21 best32.;
			informat q21_other $30.;
			informat q22 best32.;
			informat q22_other $30.;
			informat q23 best32.;
			informat q23_other $30.;
			informat q24 best32.;
			informat q24_other $30.;
			informat q25 best32.;
			informat q26 best32.;
			informat q27 best32.;
			informat q27_other $30.;
			informat q28 best32.;
			informat q28_other $30.;
			informat q29 best32.;
			informat q30 best32.;

			informat q31 best32.;
			informat q31_other $30.;
			informat q32 best32.;
			informat q32_other $30.;
			informat q33 best32.;
			informat q33_other $30.;
			informat q34 best32.;
			informat q34_other $30.;
			informat q35 best32.;
			informat q35_other $30.;
			informat q36 best32.;
			informat q36_other $30.;
			informat q37 best32.;
			informat q37_other $30.;
			informat q38 best32.;
			informat q38_other $30.;
			informat q39 best32.;
			informat q39_other $30.;
			informat q40 best32.;
			informat q40_other $30.;

			informat q41 best32.;
			informat q41_other $30.;
			informat q42 best32.;
			informat q42_other $30.;
			informat q43 best32.;
			informat q43_other $30.;
			informat q44 best32.;
			informat q44_other $30.;
			informat q45 best32.;
			informat q45_other $30.;
			informat q46 best32.;
			informat q46_other $30.;
			informat q47 best32.;
			informat q47_other $30.;
			informat q48 best32.;
			informat q48_other $30.;
			informat q49 best32.;
			informat q49_other $30.;
			informat q50 best32.;
			informat q50_other $30.;

			informat q51 best32.;
			informat q51_other $30.;
			informat q52 best32.;
			informat q52_other $30.;
			informat q53 best32.;
			informat q53_other $30.;
			informat q54 best32.;
			informat q54_other $30.;
			informat q55 best32.;
			informat q55_other $30.;
			informat q56 best32.;
			informat q56_other $30.;
			informat q57 best32.;
			informat q57_other $30.;
			informat q58 best32.;
			informat q58_other $30.;
			informat q59 best32.;
			informat q59_other $30.;
			informat q60 $20.;

			informat q61 best32.;
			informat q62 best32.;
			informat q63 best32.;
			informat q64 best32.;
			informat q65 best32.;
			informat q66 best32.;
			informat q66_other $30.;
			informat q67 best32.;
			informat q67_other $30.;
			informat q68 best32.;
			informat q68_other $30.;
			informat q69 best32.;
			informat q69_other $30.;
			informat q70 best32.;

			informat q71 best32.;
			informat q72 best32.;
			informat q72_other $30.;
			informat q73 best32.;
			informat q73_other $30.;
			informat q74 best32.;
			informat q75 best32.;
			informat q76 best32.;
			informat q76_other $30.;
			informat q77 best32.;
			informat q77_other $30.;
			informat q78 best32.;
			informat q78_other $30.;
			informat q79 best32.;
			informat q79_other $30.;
			informat q80 best32.;
			informat q80_other $30.;

			informat q81 best32.;
			informat q81_other $30.;
			informat q82 best32.;
			informat q82_other $30.;
			informat q83 best32.;
			informat q83_other $30.;
			informat q84 best32.;
			informat q84_other $30.;
			informat q85 best32.;
			informat q85_other $30.;
			informat q86 best32.;
			informat q86_other $30.;
			informat q87 best32.;
			informat q87_other $30.;
			informat q88 best32.;
			informat q88_other $30.;
			informat q89 best32.;
			informat q89_other $30.;
			informat q90 best32.;
			informat q90_other $30.;

			informat q91 best32.;
			informat q91_other $30.;
			informat q92 best32.;
			informat q92_other $30.;
			informat q93 best32.;
			informat q93_other $30.;
			informat q94 best32.;
			informat q94_other $30.;
			informat q95 best32.;
			informat q95_other $30.;
			informat q96 best32.;
			informat q96_other $30.;
			informat q97 best32.;
			informat q97_other $30.;
			informat q98 best32.;
			informat q98_other $30.;
			informat q99 best32.;
			informat q99_other $30.;
			informat q100 best32.;
			informat q100_other $30.;

			informat q101 best32.;
			informat q101_other $30.;
			informat q102 best32.;
			informat q102_other $30.;
			informat q103 best32.;
			informat q103_other $30.;
			informat q104 best32.;
			informat q104_other $30.;
			informat q105 best32.;
			informat q106 best32.;
			informat q107 best32.;
			informat q108 best32.;
			informat q109 best32.;
			informat q110 best32.;

			informat q111 best32.;
			informat q111_other $30.;
			informat q112 best32.;
			informat q112_other $30.;
			informat q113 best32.;
			informat q113_other $30.;
			informat q114 best32.;
			informat q114_other $30.;
			informat q115 best32.;
			informat q116 best32.;
			informat q117 best32.;
			informat q117_other $30.;
			informat q118 best32.;
			informat q118_other $30.;
			informat q119 best32.;
			informat q120 best32.;

			informat q121 best32.;
			informat q121_other $30.;
			informat q122 best32.;
			informat q122_other $30.;
			informat q123 best32.;
			informat q123_other $30.;
			informat q124 best32.;
			informat q124_other $30.;
			informat q125 best32.;
			informat q125_other $30.;
			informat q126 best32.;
			informat q126_other $30.;
			informat q127 best32.;
			informat q127_other $30.;
			informat q128 best32.;
			informat q128_other $30.;
			informat q129 best32.;
			informat q129_other $30.;
			informat q130 best32.;
			informat q130_other $30.;

			informat q131 best32.;
			informat q131_other $30.;
			informat q132 best32.;
			informat q132_other $30.;
			informat q133 best32.;
			informat q133_other $30.;
			informat q134 best32.;
			informat q134_other $30.;
			informat q135 best32.;
			informat q135_other $30.;
			informat q136 best32.;
			informat q136_other $30.;
			informat q137 best32.;
			informat q137_other $30.;
			informat q138 best32.;
			informat q138_other $30.;
			informat q139 best32.;
			informat q139_other $30.;
			informat q140 best32.;
			informat q140_other $30.;

			informat q141 best32.;
			informat q141_other $30.;
			informat q142 best32.;
			informat q142_other $30.;
			informat q143 best32.;
			informat q143_other $30.;
			informat q144 best32.;
			informat q144_other $30.;
			informat q145 best32.;
			informat q145_other $30.;
			informat q146 best32.;
			informat q146_other $30.;
			informat q147 best32.;
			informat q147_other $30.;
			informat q148 best32.;
			informat q148_other $30.;
			informat q149 best32.;
			informat q149_other $30.;
			informat q150 best32.;

			informat q151 best32.;
			informat q152 best32.;
			informat q153 best32.;
			informat q154 best32.;
			informat q155 best32.;
			informat q156 best32.;
			informat q156_other $30.;
			informat q157 best32.;
			informat q157_other $30.;
			informat q158 best32.;
			informat q158_other $30.;
			informat q159 best32.;
			informat q159_other $30.;
			informat q160 best32.;

			informat q161 best32.;
			informat q162 best32.;
			informat q162_other $30.;
			informat q163 best32.;
			informat q163_other $30.;
			informat q164 best32.;
			informat q165 best32.;
			informat q166 best32.;
			informat q166_other $30.;
			informat q167 best32.;
			informat q167_other $30.;
			informat q168 best32.;
			informat q168_other $30.;
			informat q169 best32.;
			informat q169_other $30.;
			informat q170 best32.;
			informat q170_other $30.;

			informat q171 best32.;
			informat q171_other $30.;
			informat q172 best32.;
			informat q172_other $30.;
			informat q173 best32.;
			informat q173_other $30.;
			informat q174 best32.;
			informat q174_other $30.;
			informat q175 best32.;
			informat q175_other $30.;
			informat q176 best32.;
			informat q176_other $30.;
			informat q177 best32.;
			informat q177_other $30.;
			informat q178 best32.;
			informat q178_other $30.;
			informat q179 best32.;
			informat q179_other $30.;
			informat q180 best32.;
			informat q180_other $30.;

			informat q181 best32.;
			informat q181_other $30.;
			informat q182 best32.;
			informat q182_other $30.;
			informat q183 best32.;
			informat q183_other $30.;
			informat q184 best32.;
			informat q184_other $30.;
			informat q185 best32.;
			informat q185_other $30.;
			informat q186 best32.;
			informat q186_other $30.;
			informat q187 best32.;
			informat q187_other $30.;
			informat q188 best32.;
			informat q188_other $30.;
			informat q189 best32.;
			informat q189_other $30.;
			informat q190 best32.;
			informat q190_other $30.;

			informat q191 best32.;
			informat q191_other $30.;
			informat q192 best32.;
			informat q192_other $30.;
			informat q193 best32.;
			informat q193_other $30.;
			informat q194 best32.;
			informat q194_other $30.;
			informat q195 best32.;
			informat q196 best32.;
			informat q197 best32.;
			informat q198 best32.;
			informat q199 best32.;
			informat q200 best32.;

			informat q201 best32.;
			informat q201_other $30.;
			informat q202 best32.;
			informat q202_other $30.;
			informat q203 best32.;
			informat q203_other $30.;
			informat q204 best32.;
			informat q204_other $30.;
			informat q205 best32.;
			informat q206 best32.;
			informat q207 best32.;
			informat q207_other $30.;
			informat q208 best32.;
			informat q208_other $30.;
			informat q209 best32.;
			informat q210 best32.;

			informat q211 best32.;
			informat q211_other $30.;
			informat q212 best32.;
			informat q212_other $30.;
			informat q213 best32.;
			informat q213_other $30.;
			informat q214 best32.;
			informat q214_other $30.;
			informat q215 best32.;
			informat q215_other $30.;
			informat q216 best32.;
			informat q216_other $30.;
			informat q217 best32.;
			informat q217_other $30.;
			informat q218 best32.;
			informat q218_other $30.;
			informat q219 best32.;
			informat q219_other $30.;
			informat q220 best32.;
			informat q220_other $30.;

			informat q221 best32.;
			informat q221_other $30.;
			informat q222 best32.;
			informat q222_other $30.;
			informat q223 best32.;
			informat q223_other $30.;
			informat q224 best32.;
			informat q224_other $30.;
			informat q225 best32.;
			informat q225_other $30.;
			informat q226 best32.;
			informat q226_other $30.;
			informat q227 best32.;
			informat q227_other $30.;
			informat q228 best32.;
			informat q228_other $30.;
			informat q229 best32.;
			informat q229_other $30.;
			informat q230 best32.;
			informat q230_other $30.;

			informat q231 best32.;
			informat q231_other $30.;
			informat q232 best32.;
			informat q232_other $30.;
			informat q233 best32.;
			informat q233_other $30.;
			informat q234 best32.;
			informat q234_other $30.;
			informat q235 best32.;
			informat q235_other $30.;
			informat q236 best32.;
			informat q236_other $30.;
			informat q237 best32.;
			informat q237_other $30.;
			informat q238 best32.;
			informat q238_other $30.;
			informat q239 best32.;
			informat q239_other $30.;
			informat q240 best32.;

			informat q241 best32.;
			informat q242 best32.;
			informat q243 best32.;
			informat q244 best32.;
			informat q245 best32.;
			informat q246 best32.;
			informat q246_other $30.;
			informat q247 best32.;
			informat q247_other $30.;
			informat q248 best32.;
			informat q248_other $30.;
			informat q249 best32.;
			informat q249_other $30.;
			informat q250 best32.;

			informat q251 best32.;
			informat q252 best32.;
			informat q252_other $30.;
			informat q253 best32.;
			informat q253_other $30.;
			informat q254 best32.;
			informat q255 best32.;
			informat q256 best32.;
			informat q256_other $30.;
			informat q257 best32.;
			informat q257_other $30.;
			informat q258 best32.;
			informat q258_other $30.;
			informat q259 best32.;
			informat q259_other $30.;
			informat q260 best32.;
			informat q260_other $30.;

			informat q261 best32.;
			informat q261_other $30.;
			informat q262 best32.;
			informat q262_other $30.;
			informat q263 best32.;
			informat q263_other $30.;
			informat q264 best32.;
			informat q264_other $30.;
			informat q265 best32.;
			informat q265_other $30.;
			informat q266 best32.;
			informat q266_other $30.;
			informat q267 best32.;
			informat q267_other $30.;
			informat q268 best32.;
			informat q268_other $30.;
			informat q269 best32.;
			informat q269_other $30.;
			informat q270 best32.;
			informat q270_other $30.;

			informat q271 best32.;
			informat q271_other $30.;
			informat q272 best32.;
			informat q272_other $30.;
			informat q273 best32.;
			informat q273_other $30.;
			informat q274 best32.;
			informat q274_other $30.;
			informat q275 best32.;
			informat q275_other $30.;
			informat q276 best32.;
			informat q276_other $30.;
			informat q277 best32.;
			informat q277_other $30.;
			informat q278 best32.;
			informat q278_other $30.;
			informat q279 best32.;
			informat q279_other $30.;
			informat q280 best32.;
			informat q280_other $30.;

			informat q281 best32.;
			informat q281_other $30.;
			informat q282 best32.;
			informat q282_other $30.;
			informat q283 best32.;
			informat q283_other $30.;
			informat q284 best32.;
			informat q284_other $30.;
			informat q285 $20.;
			informat q286 best32.;
			informat q287 best32.;
			informat q288 best32.;
			informat q289 best32.;
			informat q290 best32.;

			informat q291 best32.;
			informat q291_other $30.;
			informat q292 best32.;
			informat q292_other $30.;
			informat q293 best32.;
			informat q293_other $30.;
			informat q294 best32.;
			informat q294_other $30.;
			informat q295 best32.;
			informat q296 best32.;
			informat q297 best32.;
			informat q297_other $30.;
			informat q298 best32.;
			informat q298_other $30.;
			informat q299 best32.;
			informat q300 best32.;

			informat q301 best32.;
			informat q301_other $30.;
			informat q302 best32.;
			informat q302_other $30.;
			informat q303 best32.;
			informat q303_other $30.;
			informat q304 best32.;
			informat q304_other $30.;
			informat q305 best32.;
			informat q305_other $30.;
			informat q306 best32.;
			informat q306_other $30.;
			informat q307 best32.;
			informat q307_other $30.;
			informat q308 best32.;
			informat q308_other $30.;
			informat q309 best32.;
			informat q309_other $30.;
			informat q310 best32.;
			informat q310_other $30.;

			informat q311 best32.;
			informat q311_other $30.;
			informat q312 best32.;
			informat q312_other $30.;
			informat q313 best32.;
			informat q313_other $30.;
			informat q314 best32.;
			informat q314_other $30.;
			informat q315 best32.;
			informat q315_other $30.;
			informat q316 best32.;
			informat q316_other $30.;
			informat q317 best32.;
			informat q317_other $30.;
			informat q318 best32.;
			informat q318_other $30.;
			informat q319 best32.;
			informat q319_other $30.;
			informat q320 best32.;
			informat q320_other $30.;

			informat q321 best32.;
			informat q321_other $30.;
			informat q322 best32.;
			informat q322_other $30.;
			informat q323 best32.;
			informat q323_other $30.;
			informat q324 best32.;
			informat q324_other $30.;
			informat q325 best32.;
			informat q325_other $30.;
			informat q326 best32.;
			informat q326_other $30.;
			informat q327 best32.;
			informat q327_other $30.;
			informat q328 best32.;
			informat q328_other $30.;
			informat q329 best32.;
			informat q329_other $30.;
			informat q330 best32.;

			informat q331 best32.;
			informat q332 best32.;
			informat q333 best32.;
			informat q334 best32.;
			informat q335 best32.;
			informat q336 best32.;
			informat q336_other $30.;
			informat q337 best32.;
			informat q337_other $30.;
			informat q338 best32.;
			informat q338_other $30.;
			informat q339 best32.;
			informat q339_other $30.;
			informat q340 best32.;

			informat q341 best32.;
			informat q342 best32.;
			informat q342_other $30.;
			informat q343 best32.;
			informat q343_other $30.;
			informat q344 best32.;
			informat q345 best32.;
			informat q346 best32.;
			informat q346_other $30.;
			informat q347 best32.;
			informat q347_other $30.;
			informat q348 best32.;
			informat q348_other $30.;
			informat q349 best32.;
			informat q349_other $30.;
			informat q350 best32.;
			informat q350_other $30.;

			informat q351 best32.;
			informat q351_other $30.;
			informat q352 best32.;
			informat q352_other $30.;
			informat q353 best32.;
			informat q353_other $30.;
			informat q354 best32.;
			informat q354_other $30.;
			informat q355 best32.;
			informat q355_other $30.;
			informat q356 best32.;
			informat q356_other $30.;
			informat q357 best32.;
			informat q357_other $30.;
			informat q358 best32.;
			informat q358_other $30.;
			informat q359 best32.;
			informat q359_other $30.;
			informat q360 best32.;
			informat q360_other $30.;

			informat q361 best32.;
			informat q361_other $30.;
			informat q362 best32.;
			informat q362_other $30.;
			informat q363 best32.;
			informat q363_other $30.;
			informat q364 best32.;
			informat q364_other $30.;
			informat q365 best32.;
			informat q365_other $30.;
			informat q366 best32.;
			informat q366_other $30.;
			informat q367 best32.;
			informat q367_other $30.;
			informat q368 best32.;
			informat q368_other $30.;
			informat q369 best32.;
			informat q369_other $30.;
			informat q370 best32.;
			informat q370_other $30.;

			informat q371 best32.;
			informat q371_other $30.;
			informat q372 best32.;
			informat q372_other $30.;
			informat q373 best32.;
			informat q373_other $30.;
			informat q374 best32.;
			informat q374_other $30.;
			informat q375 best32.;
			informat q376 best32.;
			informat q377 best32.;
			informat q378 best32.;
			informat q379 best32.;
			informat q379_other $30.;
			informat q380 best32.;
			informat q380_other $30.;

			informat q381 best32.;
			informat q382 best32.;
			informat q383 best32.;
			informat q384 $60.;
			informat q385 best32.;
			informat q386 best32.;
			informat q387 $60.;
			informat q388 best32.;
			informat q389 $60.;
			informat q390 best32.;

			informat q391 best32.;
			informat q392 best32.;
			informat q393 time12.;
			informat q394 best32.;
			informat q395 time12.;
			informat q396 best32.;
			informat q397 best32.;
			informat q397_other $60.;
			informat q398 best32.;
			informat q398_other $60.;
			informat q399 best32.;
			informat q399_other $60.;
			informat q400 $60.;
			informat q400_one best32.;
			informat q400_two best32.;
			informat q400_thr best32.;
			informat q400_for best32.;
			informat q400_fiv best32.;
			informat q400_six best32.;
			informat q400_other $60.;

			informat q401 best32.;
			informat q402 best32.;
			informat q403 best32.;
			informat q403_other $60.;
			informat q404 best32.;
			informat q404_other $60.;
			informat q405 best32.;
			informat q406 best32.;
			informat q407 best32.;
			informat q407_other $60.;
			informat q408 best32.;
			informat q409 $60.;
			informat q409_one best32.;
			informat q409_two best32.;
			informat q409_thr best32.;
			informat q409_for best32.;
			informat q409_fiv best32.;
			informat q409_six best32.;
			informat q409_other $60.;
			informat q410 best32.;

			informat q411 best32.;
			informat q412 best32.;
			informat q413 best32.;
			informat q414 best32.;
			informat q450 best32.;
			informat q450_other $150.;

			informat q451 best32.;
			informat q451_other $150.;
			informat q452 best32.;
			informat q452_other $150.;
			informat q453 best32.;
			informat q453_other $150.;
			informat q454 best32.;
			informat q454_other $150.;
			informat q455 best32.;
			informat q455_other $150.;
			informat q456 best32.;
			informat q456_other $150.;

			informat route $20.;
			informat direction $15.;
			informat daypart_code best32.;
			informat daypart $20.;
			informat work_tour_code best32.;
			informat work_tour $150.;
			informat trip_purp_code best32.;
			informat trip_purp $60.;
			informat hb_trip_purp_code best32.;
			informat hb_trip_purp $60.;
			informat nhb_trip_code best32.;
			informat nhb_trip $60.;
			informat origin_type_code best32.;
			informat origin_type $60.;
			informat dest_type_code best32.;
			informat dest_type $60.;

			informat hb_access_code best32.;
			informat hb_access $60.;
			informat hb_access_min best32.;
			informat hb_access_cat_time_code best32.;
			informat hb_access_cat_time $20.;
			informat hb_access_q16_recode best32.;
			informat hb_access_q16 $20.;
			informat hb_access_mile best32.;
			informat hb_access_dist_cat_code best32.;
			informat hb_access_dist_cat $20.;
			informat hb_access_q17_recode best32.;
			informat hb_access_q17 $20.;

			informat hb_egress_code best32.;
			informat hb_egress $60.;
			informat hb_egress_min best32.;
			informat hb_egress_cat_time_code best32.;
			informat hb_egress_cat_time $20.;
			informat hb_egress_q379_recode best32.;
			informat hb_access_q379 $20.;
			informat hb_egress_mile best32.;
			informat hb_egress_dist_cat_code best32.;
			informat hb_egress_dist_cat $20.;
			informat hb_egress_q380_recode best32.;
			informat hb_egress_q380 $20.;

			informat employed_code best32.;
			informat employed $30.;
			informat student_code best32.;
			informat sudent $30.;
			informat employed_or_student_code best32.;
			informat employed_or_student $30.;
			informat fare_type_q397_code best32.;
			informat fare_type_q397 $30.;
			informat clipper_code best32.;
			informat clipper $30.;
			informat why_not_clipper_q399_code best32.;
			informat why_not_clipper $60.;

			informat workers_in_hh_q403_code best32.;
			informat workers_in_hh_q403 $30.;
			informat vehicles_in_hh_q404_code best32.;
			informat vehicles_in_hh_q404 $30.;
			informat age_group_q405_code best32.;
			informat age_group_q405 $20.;
			informat hispanic_q406_code best32.;
			informat hispanic_q406 $120.;
			informat race_q407_code best32.;
			informat race_q407 $30.;
			informat language_q409_code best32.;
			informat language_q409 $30.;

			informat income_code best32.;
			informat income $30.;
			informat trip_legs_code best32.;
			informat trip_legs $30.;
			informat weight best32.;

			input    id  
			         q1  
			         q2  
			         q3 $ 
			         q4  
			         q5  
			         q6  
			         q7  
			         q8  
			         q9  
			         q10  

			         q11  
			         q12  
			         q13   
			         q15  
			         q16  
			         q16_other $ 
			         q17  
			         q17_other $ 
			         q18  
			         q19  
			         q20  

			         q21  
			         q21_other $ 
			         q22  
			         q22_other $ 
			         q23  
			         q23_other $ 
			         q24  
			         q24_other $ 
			         q25  
			         q26  
			         q27  
			         q27_other $ 
			         q28  
			         q28_other $ 
			         q29  
			         q30  

			         q31  
			         q31_other $ 
			         q32  
			         q32_other $ 
			         q33  
			         q33_other $ 
			         q34  
			         q34_other $ 
			         q35  
			         q35_other $ 
			         q36  
			         q36_other $ 
			         q37  
			         q37_other $ 
			         q38  
			         q38_other $ 
			         q39  
			         q39_other $ 
			         q40  
			         q40_other $ 

			         q41  
			         q41_other $ 
			         q42  
			         q42_other $ 
			         q43  
			         q43_other $ 
			         q44  
			         q44_other $ 
			         q45  
			         q45_other $ 
			         q46  
			         q46_other $ 
			         q47  
			         q47_other $ 
			         q48  
			         q48_other $ 
			         q49  
			         q49_other $ 
			         q50  
			         q50_other $ 

			         q51  
			         q51_other $ 
			         q52  
			         q52_other $ 
			         q53  
			         q53_other $ 
			         q54  
			         q54_other $ 
			         q55  
			         q55_other $ 
			         q56  
			         q56_other $ 
			         q57  
			         q57_other $ 
			         q58  
			         q58_other $ 
			         q59  
			         q59_other $ 
			         q60 $

			         q61  
			         q62  
			         q63  
			         q64  
			         q65  
			         q66  
			         q66_other $ 
			         q67  
			         q67_other $ 
			         q68  
			         q68_other $ 
			         q69  
			         q69_other $ 
			         q70  

			         q71  
			         q72  
			         q72_other $ 
			         q73  
			         q73_other $ 
			         q74  
			         q75  
			         q76  
			         q76_other $ 
			         q77  
			         q77_other $ 
			         q78  
			         q78_other $ 
			         q79  
			         q79_other $ 
			         q80  
			         q80_other $ 

			         q81  
			         q81_other $ 
			         q82  
			         q82_other $ 
			         q83  
			         q83_other $ 
			         q84  
			         q84_other $ 
			         q85  
			         q85_other $ 
			         q86  
			         q86_other $ 
			         q87  
			         q87_other $ 
			         q88  
			         q88_other $ 
			         q89  
			         q89_other $ 
			         q90  
			         q90_other $ 

			         q91  
			         q91_other $ 
			         q92  
			         q92_other $ 
			         q93  
			         q93_other $ 
			         q94  
			         q94_other $ 
			         q95  
			         q95_other $ 
			         q96  
			         q96_other $ 
			         q97  
			         q97_other $ 
			         q98  
			         q98_other $ 
			         q99  
			         q99_other $ 
			         q100  
			         q100_other $ 

			         q101  
			         q101_other $ 
			         q102  
			         q102_other $ 
			         q103  
			         q103_other $ 
			         q104  
			         q104_other $ 
			         q105  
			         q106  
			         q107  
			         q108  
			         q109  
			         q110  

			         q111  
			         q111_other $ 
			         q112  
			         q112_other $ 
			         q113  
			         q113_other $ 
			         q114  
			         q114_other $ 
			         q115  
			         q116  
			         q117  
			         q117_other $ 
			         q118  
			         q118_other $ 
			         q119  
			         q120  

			         q121  
			         q121_other $ 
			         q122  
			         q122_other $ 
			         q123  
			         q123_other $ 
			         q124  
			         q124_other $ 
			         q125  
			         q125_other $ 
			         q126  
			         q126_other $ 
			         q127  
			         q127_other $ 
			         q128  
			         q128_other $ 
			         q129  
			         q129_other $ 
			         q130  
			         q130_other $ 

			         q131  
			         q131_other $ 
			         q132  
			         q132_other $ 
			         q133  
			         q133_other $ 
			         q134  
			         q134_other $ 
			         q135  
			         q135_other $ 
			         q136  
			         q136_other $ 
			         q137  
			         q137_other $ 
			         q138  
			         q138_other $ 
			         q139  
			         q139_other $ 
			         q140  
			         q140_other $ 

			         q141  
			         q141_other $ 
			         q142  
			         q142_other $ 
			         q143  
			         q143_other $ 
			         q144  
			         q144_other $ 
			         q145  
			         q145_other $ 
			         q146  
			         q146_other $ 
			         q147  
			         q147_other $ 
			         q148  
			         q148_other $ 
			         q149  
			         q149_other $ 
			         q150  

			         q151  
			         q152  
			         q153  
			         q154  
			         q155  
			         q156  
			         q156_other $ 
			         q157  
			         q157_other $ 
			         q158  
			         q158_other $ 
			         q159  
			         q159_other $ 
			         q160  

			         q161  
			         q162  
			         q162_other $ 
			         q163  
			         q163_other $ 
			         q164  
			         q165  
			         q166  
			         q166_other $ 
			         q167  
			         q167_other $ 
			         q168  
			         q168_other $ 
			         q169  
			         q169_other $ 
			         q170  
			         q170_other $ 

			         q171  
			         q171_other $ 
			         q172  
			         q172_other $ 
			         q173  
			         q173_other $ 
			         q174  
			         q174_other $ 
			         q175  
			         q175_other $ 
			         q176  
			         q176_other $ 
			         q177  
			         q177_other $ 
			         q178  
			         q178_other $ 
			         q179  
			         q179_other $ 
			         q180  
			         q180_other $ 

			         q181  
			         q181_other $ 
			         q182  
			         q182_other $ 
			         q183  
			         q183_other $ 
			         q184  
			         q184_other $ 
			         q185  
			         q185_other $ 
			         q186  
			         q186_other $ 
			         q187  
			         q187_other $ 
			         q188  
			         q188_other $ 
			         q189  
			         q189_other $ 
			         q190  
			         q190_other $ 

			         q191  
			         q191_other $ 
			         q192  
			         q192_other $ 
			         q193  
			         q193_other $ 
			         q194  
			         q194_other $ 
			         q195  
			         q196  
			         q197  
			         q198  
			         q199  
			         q200  

			         q201  
			         q201_other $ 
			         q202  
			         q202_other $ 
			         q203  
			         q203_other $ 
			         q204  
			         q204_other $ 
			         q205  
			         q206  
			         q207  
			         q207_other $ 
			         q208  
			         q208_other $ 
			         q209  
			         q210  

			         q211  
			         q211_other $ 
			         q212  
			         q212_other $ 
			         q213  
			         q213_other $ 
			         q214  
			         q214_other $ 
			         q215  
			         q215_other $ 
			         q216  
			         q216_other $ 
			         q217  
			         q217_other $ 
			         q218  
			         q218_other $ 
			         q219  
			         q219_other $ 
			         q220  
			         q220_other $ 

			         q221  
			         q221_other $ 
			         q222  
			         q222_other $ 
			         q223  
			         q223_other $ 
			         q224  
			         q224_other $ 
			         q225  
			         q225_other $ 
			         q226  
			         q226_other $ 
			         q227  
			         q227_other $ 
			         q228  
			         q228_other $ 
			         q229  
			         q229_other $ 
			         q230  
			         q230_other $ 

			         q231  
			         q231_other $ 
			         q232  
			         q232_other $ 
			         q233  
			         q233_other $ 
			         q234  
			         q234_other $ 
			         q235  
			         q235_other $ 
			         q236  
			         q236_other $ 
			         q237  
			         q237_other $ 
			         q238  
			         q238_other $ 
			         q239  
			         q239_other $ 
			         q240  

			         q241  
			         q242  
			         q243  
			         q244  
			         q245  
			         q246  
			         q246_other $ 
			         q247  
			         q247_other $ 
			         q248  
			         q248_other $ 
			         q249  
			         q249_other $ 
			         q250  

			         q251  
			         q252  
			         q252_other $ 
			         q253  
			         q253_other $ 
			         q254  
			         q255  
			         q256  
			         q256_other $ 
			         q257  
			         q257_other $ 
			         q258  
			         q258_other $ 
			         q259  
			         q259_other $ 
			         q260  
			         q260_other $ 

			         q261  
			         q261_other $ 
			         q262  
			         q262_other $ 
			         q263  
			         q263_other $ 
			         q264  
			         q264_other $ 
			         q265  
			         q265_other $ 
			         q266  
			         q266_other $ 
			         q267  
			         q267_other $ 
			         q268  
			         q268_other $ 
			         q269  
			         q269_other $ 
			         q270  
			         q270_other $ 

			         q271  
			         q271_other $ 
			         q272  
			         q272_other $ 
			         q273  
			         q273_other $ 
			         q274  
			         q274_other $ 
			         q275  
			         q275_other $ 
			         q276  
			         q276_other $ 
			         q277  
			         q277_other $ 
			         q278  
			         q278_other $ 
			         q279  
			         q279_other $ 
			         q280  
			         q280_other $ 

			         q281  
			         q281_other $ 
			         q282  
			         q282_other $ 
			         q283  
			         q283_other $ 
			         q284  
			         q284_other $ 
			         q285 $  
			         q286  
			         q287  
			         q288  
			         q289  
			         q290  

			         q291  
			         q291_other $ 
			         q292  
			         q292_other $ 
			         q293  
			         q293_other $ 
			         q294  
			         q294_other $ 
			         q295  
			         q296  
			         q297  
			         q297_other $ 
			         q298  
			         q298_other $ 
			         q299  
			         q300  

			         q301  
			         q301_other $ 
			         q302  
			         q302_other $ 
			         q303  
			         q303_other $ 
			         q304  
			         q304_other $ 
			         q305  
			         q305_other $ 
			         q306  
			         q306_other $ 
			         q307  
			         q307_other $ 
			         q308  
			         q308_other $ 
			         q309  
			         q309_other $ 
			         q310  
			         q310_other $ 

			         q311  
			         q311_other $ 
			         q312  
			         q312_other $ 
			         q313  
			         q313_other $ 
			         q314  
			         q314_other $ 
			         q315  
			         q315_other $ 
			         q316  
			         q316_other $ 
			         q317  
			         q317_other $ 
			         q318  
			         q318_other $ 
			         q319  
			         q319_other $ 
			         q320  
			         q320_other $ 

			         q321  
			         q321_other $ 
			         q322  
			         q322_other $ 
			         q323  
			         q323_other $ 
			         q324  
			         q324_other $ 
			         q325  
			         q325_other $ 
			         q326  
			         q326_other $ 
			         q327  
			         q327_other $ 
			         q328  
			         q328_other $ 
			         q329  
			         q329_other $ 
			         q330  

			         q331  
			         q332  
			         q333  
			         q334  
			         q335  
			         q336  
			         q336_other $ 
			         q337  
			         q337_other $ 
			         q338  
			         q338_other $ 
			         q339  
			         q339_other $ 
			         q340  

			         q341  
			         q342  
			         q342_other $ 
			         q343  
			         q343_other $ 
			         q344  
			         q345  
			         q346  
			         q346_other $ 
			         q347  
			         q347_other $ 
			         q348  
			         q348_other $ 
			         q349  
			         q349_other $ 
			         q350  
			         q350_other $ 

			         q351  
			         q351_other $ 
			         q352  
			         q352_other $ 
			         q353  
			         q353_other $ 
			         q354  
			         q354_other $ 
			         q355  
			         q355_other $ 
			         q356  
			         q356_other $ 
			         q357  
			         q357_other $ 
			         q358  
			         q358_other $ 
			         q359  
			         q359_other $ 
			         q360  
			         q360_other $ 

			         q361  
			         q361_other $ 
			         q362  
			         q362_other $ 
			         q363  
			         q363_other $ 
			         q364  
			         q364_other $ 
			         q365  
			         q365_other $ 
			         q366  
			         q366_other $ 
			         q367  
			         q367_other $ 
			         q368  
			         q368_other $ 
			         q369  
			         q369_other $ 
			         q370  
			         q370_other $ 

			         q371  
			         q371_other $ 
			         q372  
			         q372_other $ 
			         q373  
			         q373_other $ 
			         q374  
			         q374_other $ 
			         q375  
			         q376  
			         q377  
			         q378  
			         q379  
			         q379_other $ 
			         q380  
			         q380_other $ 

			         q381  
			         q382  
			         q383  
			         q384 $ 
			         q385  
			         q386  
			         q387 $ 
			         q388  
			         q389 $ 
			         q390  

			         q391  
			         q392  
			         q393  
			         q394  
			         q395  
			         q396  
			         q397  
			         q397_other $ 
			         q398  
			         q398_other $ 
			         q399  
			         q399_other $ 
			         q400 $ 
			         q400_one  
			         q400_two  
			         q400_thr  
			         q400_for  
			         q400_fiv  
			         q400_six  
			         q400_other $ 

			         q401  
			         q402  
			         q403  
			         q403_other $ 
			         q404  
			         q404_other $ 
			         q405  
			         q406  
			         q407  
			         q407_other $ 
			         q408  
			         q409 $ 
			         q409_one  
			         q409_two  
			         q409_thr  
			         q409_for  
			         q409_fiv  
			         q409_six  
			         q409_other $ 
			         q410  

			         q411  
			         q412  
			         q413  
			         q414  
			         q450  
			         q450_other $ 

			         q451  
			         q451_other $ 
			         q452  
			         q452_other $ 
			         q453  
			         q453_other $ 
			         q454  
			         q454_other $ 
			         q455  
			         q455_other $ 
			         q456  
			         q456_other $ 

			         route $ 
			         direction $ 
			         daypart_code  
			         daypart $ 
			         work_tour_code  
			         work_tour $ 
			         trip_purp_code  
			         trip_purp $ 
			         hb_trip_purp_code  
			         hb_trip_purp $ 
			         nhb_trip_code  
			         nhb_trip $ 
			         origin_type_code  
			         origin_type $ 
			         dest_type_code  
			         dest_type $ 

			         hb_access_code  
			         hb_access $ 
			         hb_access_min  
			         hb_access_cat_time_code  
			         hb_access_cat_time $ 
			         hb_access_q16_recode  
			         hb_access_q16 $ 
			         hb_access_mile  
			         hb_access_dist_cat_code  
			         hb_access_dist_cat $ 
			         hb_access_q17_recode  
			         hb_access_q17 $ 

			         hb_egress_code  
			         hb_egress $ 
			         hb_egress_min  
			         hb_egress_cat_time_code  
			         hb_egress_cat_time $ 
			         hb_egress_q379_recode  
			         hb_access_q379 $ 
			         hb_egress_mile  
			         hb_egress_dist_cat_code  
			         hb_egress_dist_cat $ 
			         hb_egress_q380_recode  
			         hb_egress_q380 $ 

			         employed_code  
			         employed $ 
			         student_code  
			         sudent $ 
			         employed_or_student_code  
			         employed_or_student $ 
			         fare_type_q397_code  
			         fare_type_q397 $ 
			         clipper_code  
			         clipper $ 
			         why_not_clipper_q399_code  
			         why_not_clipper $ 

			         workers_in_hh_q403_code  
			         workers_in_hh_q403 $ 
			         vehicles_in_hh_q404_code  
			         vehicles_in_hh_q404 $ 
			         age_group_q405_code  
			         age_group_q405 $ 
			         hispanic_q406_code  
			         hispanic_q406 $ 
			         race_q407_code  
			         race_q407 $ 
			         language_q409_code  
			         language_q409 $ 

			         income_code  
			         income $ 
			         trip_legs_code  
			         trip_legs $ 
			         weight;

run;

data OnBoard.rawAcTransitWeekdayCati; set input;
run;


* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* Read in the raw cati weekend data file;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
data input; infile "&weekend_cati_file." delimiter = ',' missover scanover dsd
            lrecl = 32767 firstobs = 2;

			format id best12.;
			format q1 best12.;
			format q2 best12.;
			format q3 $60.;
			format q4 best12.;
			format q5 best12.;
			format q6 best12.;
			format q7 best12.;
			format q8 best12.;
			format q9 best12.;
			format q10 best12.;

			format q11 best12.;
			format q12 best12.;
			format q13 best12.;
			format q15 best12.;
			format q16 best12.;
			format q16_other $30.;
			format q17 best12.;
			format q17_other $30.;
			format q18 best12.;
			format q19 best12.;
			format q20 best12.;

			format q21 best12.;
			format q21_other $30.;
			format q22 best12.;
			format q22_other $30.;
			format q23 best12.;
			format q23_other $30.;
			format q24 best12.;
			format q24_other $30.;
			format q25 best12.;
			format q26 best12.;
			format q27 best12.;
			format q27_other $30.;
			format q28 best12.;
			format q28_other $30.;
			format q29 best12.;
			format q30 best12.;

			format q31 best12.;
			format q31_other $30.;
			format q32 best12.;
			format q32_other $30.;
			format q33 best12.;
			format q33_other $30.;
			format q34 best12.;
			format q34_other $30.;
			format q35 best12.;
			format q35_other $30.;
			format q36 best12.;
			format q36_other $30.;
			format q37 best12.;
			format q37_other $30.;
			format q38 best12.;
			format q38_other $30.;
			format q39 best12.;
			format q39_other $30.;
			format q40 best12.;
			format q40_other $30.;

			format q41 best12.;
			format q41_other $30.;
			format q42 best12.;
			format q42_other $30.;
			format q43 best12.;
			format q43_other $30.;
			format q44 best12.;
			format q44_other $30.;
			format q45 best12.;
			format q45_other $30.;
			format q46 best12.;
			format q46_other $30.;
			format q47 best12.;
			format q47_other $30.;
			format q48 best12.;
			format q48_other $30.;
			format q49 best12.;
			format q49_other $30.;
			format q50 best12.;
			format q50_other $30.;

			format q51 best12.;
			format q51_other $30.;
			format q52 best12.;
			format q52_other $30.;
			format q53 best12.;
			format q53_other $30.;
			format q54 best12.;
			format q54_other $30.;
			format q55 best12.;
			format q55_other $30.;
			format q56 best12.;
			format q56_other $30.;
			format q57 best12.;
			format q57_other $30.;
			format q58 best12.;
			format q58_other $30.;
			format q59 best12.;
			format q59_other $30.;
			format q60 best12.;

			format q61 best12.;
			format q62 best12.;
			format q63 best12.;
			format q64 best12.;
			format q65 best12.;
			format q66 best12.;
			format q66_other $30.;
			format q67 best12.;
			format q67_other $30.;
			format q68 best12.;
			format q68_other $30.;
			format q69 best12.;
			format q69_other $30.;
			format q70 best12.;

			format q71 best12.;
			format q72 best12.;
			format q72_other $30.;
			format q73 best12.;
			format q73_other $30.;
			format q74 best12.;
			format q75 best12.;
			format q76 best12.;
			format q76_other $30.;
			format q77 best12.;
			format q77_other $30.;
			format q78 best12.;
			format q78_other $30.;
			format q79 best12.;
			format q79_other $30.;
			format q80 best12.;
			format q80_other $30.;

			format q81 best12.;
			format q81_other $30.;
			format q82 best12.;
			format q82_other $30.;
			format q83 best12.;
			format q83_other $30.;
			format q84 best12.;
			format q84_other $30.;
			format q85 best12.;
			format q85_other $30.;
			format q86 best12.;
			format q86_other $30.;
			format q87 best12.;
			format q87_other $30.;
			format q88 best12.;
			format q88_other $30.;
			format q89 best12.;
			format q89_other $30.;
			format q90 best12.;
			format q90_other $30.;

			format q91 best12.;
			format q91_other $30.;
			format q92 best12.;
			format q92_other $30.;
			format q93 best12.;
			format q93_other $30.;
			format q94 best12.;
			format q94_other $30.;
			format q95 best12.;
			format q95_other $30.;
			format q96 best12.;
			format q96_other $30.;
			format q97 best12.;
			format q97_other $30.;
			format q98 best12.;
			format q98_other $30.;
			format q99 best12.;
			format q99_other $30.;
			format q100 best12.;
			format q100_other $30.;

			format q101 best12.;
			format q101_other $30.;
			format q102 best12.;
			format q102_other $30.;
			format q103 best12.;
			format q103_other $30.;
			format q104 best12.;
			format q104_other $30.;
			format q105 best12.;
			format q106 best12.;
			format q107 best12.;
			format q108 best12.;
			format q109 best12.;
			format q110 best12.;

			format q111 best12.;
			format q111_other $30.;
			format q112 best12.;
			format q112_other $30.;
			format q113 best12.;
			format q113_other $30.;
			format q114 best12.;
			format q114_other $30.;
			format q115 best12.;
			format q116 best12.;
			format q117 best12.;
			format q117_other $30.;
			format q118 best12.;
			format q118_other $30.;
			format q119 best12.;
			format q120 best12.;

			format q121 best12.;
			format q121_other $30.;
			format q122 best12.;
			format q122_other $30.;
			format q123 best12.;
			format q123_other $30.;
			format q124 best12.;
			format q124_other $30.;
			format q125 best12.;
			format q125_other $30.;
			format q126 best12.;
			format q126_other $30.;
			format q127 best12.;
			format q127_other $30.;
			format q128 best12.;
			format q128_other $30.;
			format q129 best12.;
			format q129_other $30.;
			format q130 best12.;
			format q130_other $30.;

			format q131 best12.;
			format q131_other $30.;
			format q132 best12.;
			format q132_other $30.;
			format q133 best12.;
			format q133_other $30.;
			format q134 best12.;
			format q134_other $30.;
			format q135 best12.;
			format q135_other $30.;
			format q136 best12.;
			format q136_other $30.;
			format q137 best12.;
			format q137_other $30.;
			format q138 best12.;
			format q138_other $30.;
			format q139 best12.;
			format q139_other $30.;
			format q140 best12.;
			format q140_other $30.;

			format q141 best12.;
			format q141_other $30.;
			format q142 best12.;
			format q142_other $30.;
			format q143 best12.;
			format q143_other $30.;
			format q144 best12.;
			format q144_other $30.;
			format q145 best12.;
			format q145_other $30.;
			format q146 best12.;
			format q146_other $30.;
			format q147 best12.;
			format q147_other $30.;
			format q148 best12.;
			format q148_other $30.;
			format q149 best12.;
			format q149_other $30.;
			format q150 best12.;

			format q151 best12.;
			format q152 best12.;
			format q153 best12.;
			format q154 best12.;
			format q155 best12.;
			format q156 best12.;
			format q156_other $30.;
			format q157 best12.;
			format q157_other $30.;
			format q158 best12.;
			format q158_other $30.;
			format q159 best12.;
			format q159_other $30.;
			format q160 best12.;

			format q161 best12.;
			format q162 best12.;
			format q162_other $30.;
			format q163 best12.;
			format q163_other $30.;
			format q164 best12.;
			format q165 best12.;
			format q166 best12.;
			format q166_other $30.;
			format q167 best12.;
			format q167_other $30.;
			format q168 best12.;
			format q168_other $30.;
			format q169 best12.;
			format q169_other $30.;
			format q170 best12.;
			format q170_other $30.;

			format q171 best12.;
			format q171_other $30.;
			format q172 best12.;
			format q172_other $30.;
			format q173 best12.;
			format q173_other $30.;
			format q174 best12.;
			format q174_other $30.;
			format q175 best12.;
			format q175_other $30.;
			format q176 best12.;
			format q176_other $30.;
			format q177 best12.;
			format q177_other $30.;
			format q178 best12.;
			format q178_other $30.;
			format q179 best12.;
			format q179_other $30.;
			format q180 best12.;
			format q180_other $30.;

			format q181 best12.;
			format q181_other $30.;
			format q182 best12.;
			format q182_other $30.;
			format q183 best12.;
			format q183_other $30.;
			format q184 best12.;
			format q184_other $30.;
			format q185 best12.;
			format q185_other $30.;
			format q186 best12.;
			format q186_other $30.;
			format q187 best12.;
			format q187_other $30.;
			format q188 best12.;
			format q188_other $30.;
			format q189 best12.;
			format q189_other $30.;
			format q190 best12.;
			format q190_other $30.;

			format q191 best12.;
			format q191_other $30.;
			format q192 best12.;
			format q192_other $30.;
			format q193 best12.;
			format q193_other $30.;
			format q194 best12.;
			format q194_other $30.;
			format q195 best12.;
			format q196 best12.;
			format q197 best12.;
			format q198 best12.;
			format q199 best12.;
			format q200 best12.;

			format q201 best12.;
			format q201_other $30.;
			format q202 best12.;
			format q202_other $30.;
			format q203 best12.;
			format q203_other $30.;
			format q204 best12.;
			format q204_other $30.;
			format q205 best12.;
			format q206 best12.;
			format q207 best12.;
			format q207_other $30.;
			format q208 best12.;
			format q208_other $30.;
			format q209 best12.;
			format q210 best12.;

			format q211 best12.;
			format q211_other $30.;
			format q212 best12.;
			format q212_other $30.;
			format q213 best12.;
			format q213_other $30.;
			format q214 best12.;
			format q214_other $30.;
			format q215 best12.;
			format q215_other $30.;
			format q216 best12.;
			format q216_other $30.;
			format q217 best12.;
			format q217_other $30.;
			format q218 best12.;
			format q218_other $30.;
			format q219 best12.;
			format q219_other $30.;
			format q220 best12.;
			format q220_other $30.;

			format q221 best12.;
			format q221_other $30.;
			format q222 best12.;
			format q222_other $30.;
			format q223 best12.;
			format q223_other $30.;
			format q224 best12.;
			format q224_other $30.;
			format q225 best12.;
			format q225_other $30.;
			format q226 best12.;
			format q226_other $30.;
			format q227 best12.;
			format q227_other $30.;
			format q228 best12.;
			format q228_other $30.;
			format q229 best12.;
			format q229_other $30.;
			format q230 best12.;
			format q230_other $30.;

			format q231 best12.;
			format q231_other $30.;
			format q232 best12.;
			format q232_other $30.;
			format q233 best12.;
			format q233_other $30.;
			format q234 best12.;
			format q234_other $30.;
			format q235 best12.;
			format q235_other $30.;
			format q236 best12.;
			format q236_other $30.;
			format q237 best12.;
			format q237_other $30.;
			format q238 best12.;
			format q238_other $30.;
			format q239 best12.;
			format q239_other $30.;
			format q240 best12.;

			format q241 best12.;
			format q242 best12.;
			format q243 best12.;
			format q244 best12.;
			format q245 best12.;
			format q246 best12.;
			format q246_other $30.;
			format q247 best12.;
			format q247_other $30.;
			format q248 best12.;
			format q248_other $30.;
			format q249 best12.;
			format q249_other $30.;
			format q250 best12.;

			format q251 best12.;
			format q252 best12.;
			format q252_other $30.;
			format q253 best12.;
			format q253_other $30.;
			format q254 best12.;
			format q255 best12.;
			format q256 best12.;
			format q256_other $30.;
			format q257 best12.;
			format q257_other $30.;
			format q258 best12.;
			format q258_other $30.;
			format q259 best12.;
			format q259_other $30.;
			format q260 best12.;
			format q260_other $30.;

			format q261 best12.;
			format q261_other $30.;
			format q262 best12.;
			format q262_other $30.;
			format q263 best12.;
			format q263_other $30.;
			format q264 best12.;
			format q264_other $30.;
			format q265 best12.;
			format q265_other $30.;
			format q266 best12.;
			format q266_other $30.;
			format q267 best12.;
			format q267_other $30.;
			format q268 best12.;
			format q268_other $30.;
			format q269 best12.;
			format q269_other $30.;
			format q270 best12.;
			format q270_other $30.;

			format q271 best12.;
			format q271_other $30.;
			format q272 best12.;
			format q272_other $30.;
			format q273 best12.;
			format q273_other $30.;
			format q274 best12.;
			format q274_other $30.;
			format q275 best12.;
			format q275_other $30.;
			format q276 best12.;
			format q276_other $30.;
			format q277 best12.;
			format q277_other $30.;
			format q278 best12.;
			format q278_other $30.;
			format q279 best12.;
			format q279_other $30.;
			format q280 best12.;
			format q280_other $30.;

			format q281 best12.;
			format q281_other $30.;
			format q282 best12.;
			format q282_other $30.;
			format q283 best12.;
			format q283_other $30.;
			format q284 best12.;
			format q284_other $30.;
			format q285 best12.;
			format q286 best12.;
			format q287 best12.;
			format q288 best12.;
			format q289 best12.;
			format q290 best12.;

			format q291 best12.;
			format q291_other $30.;
			format q292 best12.;
			format q292_other $30.;
			format q293 best12.;
			format q293_other $30.;
			format q294 best12.;
			format q294_other $30.;
			format q295 best12.;
			format q296 best12.;
			format q297 best12.;
			format q297_other $30.;
			format q298 best12.;
			format q298_other $30.;
			format q299 best12.;
			format q300 best12.;

			format q301 best12.;
			format q301_other $30.;
			format q302 best12.;
			format q302_other $30.;
			format q303 best12.;
			format q303_other $30.;
			format q304 best12.;
			format q304_other $30.;
			format q305 best12.;
			format q305_other $30.;
			format q306 best12.;
			format q306_other $30.;
			format q307 best12.;
			format q307_other $30.;
			format q308 best12.;
			format q308_other $30.;
			format q309 best12.;
			format q309_other $30.;
			format q310 best12.;
			format q310_other $30.;

			format q311 best12.;
			format q311_other $30.;
			format q312 best12.;
			format q312_other $30.;
			format q313 best12.;
			format q313_other $30.;
			format q314 best12.;
			format q314_other $30.;
			format q315 best12.;
			format q315_other $30.;
			format q316 best12.;
			format q316_other $30.;
			format q317 best12.;
			format q317_other $30.;
			format q318 best12.;
			format q318_other $30.;
			format q319 best12.;
			format q319_other $30.;
			format q320 best12.;
			format q320_other $30.;

			format q321 best12.;
			format q321_other $30.;
			format q322 best12.;
			format q322_other $30.;
			format q323 best12.;
			format q323_other $30.;
			format q324 best12.;
			format q324_other $30.;
			format q325 best12.;
			format q325_other $30.;
			format q326 best12.;
			format q326_other $30.;
			format q327 best12.;
			format q327_other $30.;
			format q328 best12.;
			format q328_other $30.;
			format q329 best12.;
			format q329_other $30.;
			format q330 best12.;

			format q331 best12.;
			format q332 best12.;
			format q333 best12.;
			format q334 best12.;
			format q335 best12.;
			format q336 best12.;
			format q336_other $30.;
			format q337 best12.;
			format q337_other $30.;
			format q338 best12.;
			format q338_other $30.;
			format q339 best12.;
			format q339_other $30.;
			format q340 best12.;

			format q341 best12.;
			format q342 best12.;
			format q342_other $30.;
			format q343 best12.;
			format q343_other $30.;
			format q344 best12.;
			format q345 best12.;
			format q346 best12.;
			format q346_other $30.;
			format q347 best12.;
			format q347_other $30.;
			format q348 best12.;
			format q348_other $30.;
			format q349 best12.;
			format q349_other $30.;
			format q350 best12.;
			format q350_other $30.;

			format q351 best12.;
			format q351_other $30.;
			format q352 best12.;
			format q352_other $30.;
			format q353 best12.;
			format q353_other $30.;
			format q354 best12.;
			format q354_other $30.;
			format q355 best12.;
			format q355_other $30.;
			format q356 best12.;
			format q356_other $30.;
			format q357 best12.;
			format q357_other $30.;
			format q358 best12.;
			format q358_other $30.;
			format q359 best12.;
			format q359_other $30.;
			format q360 best12.;
			format q360_other $30.;

			format q361 best12.;
			format q361_other $30.;
			format q362 best12.;
			format q362_other $30.;
			format q363 best12.;
			format q363_other $30.;
			format q364 best12.;
			format q364_other $30.;
			format q365 best12.;
			format q365_other $30.;
			format q366 best12.;
			format q366_other $30.;
			format q367 best12.;
			format q367_other $30.;
			format q368 best12.;
			format q368_other $30.;
			format q369 best12.;
			format q369_other $30.;
			format q370 best12.;
			format q370_other $30.;

			format q371 best12.;
			format q371_other $30.;
			format q372 best12.;
			format q372_other $30.;
			format q373 best12.;
			format q373_other $30.;
			format q374 best12.;
			format q374_other $30.;
			format q375 best12.;
			format q376 best12.;
			format q377 best12.;
			format q378 best12.;
			format q379 best12.;
			format q379_other $30.;
			format q380 best12.;
			format q380_other $30.;

			format q381 best12.;
			format q382 best12.;
			format q383 best12.;
			format q384 $60.;
			format q385 best12.;
			format q386 best12.;
			format q387 $60.;
			format q388 best12.;
			format q389 $60.;
			format q390 best12.;

			format q391 best12.;
			format q392 best12.;
			format q393 time12.;
			format q394 best12.;
			format q395 time12.;
			format q396 best12.;
			format q397 best12.;
			format q397_other $60.;
			format q398 best12.;
			format q398_other $60.;
			format q399 best12.;
			format q399_other $60.;
			format q400 $60.;
			format q400_one best12.;
			format q400_two best12.;
			format q400_thr best12.;
			format q400_for best12.;
			format q400_fiv best12.;
			format q400_six best12.;
			format q400_other $60.;

			format q401 best12.;
			format q402 best12.;
			format q403 best12.;
			format q403_other $60.;
			format q404 best12.;
			format q404_other $60.;
			format q405 best12.;
			format q406 best12.;
			format q407 best12.;
			format q407_other $60.;
			format q408 best12.;
			format q409 $60.;
			format q409_one best12.;
			format q409_two best12.;
			format q409_thr best12.;
			format q409_other $60.;
			format q410 best12.;

			format q411 best12.;
			format q412 best12.;
			format q413 best12.;
			format q414 best12.;
			format q450 best12.;
			format q450_other $150.;

			format q451 best12.;
			format q451_other $150.;
			format q452 best12.;
			format q452_other $150.;
			format q453 best12.;
			format q453_other $150.;
			format q454 best12.;
			format q454_other $150.;
			format q455 best12.;
			format q455_other $150.;
			format q456 best12.;
			format q456_other $150.;

			format route $20.;
			format direction $15.;
			format daypart_code best12.;
			format daypart $20.;
			format work_tour_code best12.;
			format work_tour $150.;
			format trip_purp_code best12.;
			format trip_purp $60.;
			format hb_trip_purp_code best12.;
			format hb_trip_purp $60.;
			format nhb_trip_code best12.;
			format nhb_trip $60.;
			format origin_type_code best12.;
			format origin_type $60.;
			format dest_type_code best12.;
			format dest_type $60.;

			format hb_access_code best12.;
			format hb_access $60.;
			format hb_access_min best12.;
			format hb_access_cat_time_code best12.;
			format hb_access_cat_time $20.;
			format hb_access_q16_recode best12.;
			format hb_access_q16 $20.;
			format hb_access_mile best12.;
			format hb_access_dist_cat_code best12.;
			format hb_access_dist_cat $20.;
			format hb_access_q17_recode best12.;
			format hb_access_q17 $20.;

			format hb_egress_code best12.;
			format hb_egress $60.;
			format hb_egress_min best12.;
			format hb_egress_cat_time_code best12.;
			format hb_egress_cat_time $20.;
			format hb_egress_q379_recode best12.;
			format hb_access_q379 $20.;
			format hb_egress_mile best12.;
			format hb_egress_dist_cat_code best12.;
			format hb_egress_dist_cat $20.;
			format hb_egress_q380_recode best12.;
			format hb_egress_q380 $20.;

			format employed_code best12.;
			format employed $30.;
			format student_code best12.;
			format sudent $30.;
			format employed_or_student_code best12.;
			format employed_or_student $30.;
			format fare_type_q397_code best12.;
			format fare_type_q397 $30.;
			format clipper_code best12.;
			format clipper $30.;
			format why_not_clipper_q399_code best12.;
			format why_not_clipper $60.;

			format workers_in_hh_q403_code best12.;
			format workers_in_hh_q403 $30.;
			format vehicles_in_hh_q404_code best12.;
			format vehicles_in_hh_q404 $30.;
			format age_group_q405_code best12.;
			format age_group_q405 $20.;
			format hispanic_q406_code best12.;
			format hispanic_q406 $120.;
			format race_q407_code best12.;
			format race_q407 $30.;
			format language_q409_code best12.;
			format language_q409 $30.;

			format income_code best12.;
			format income $30.;
			format trip_legs_code best12.;
			format trip_legs $30.;
			format weight best12.;

			informat id best32.;
			informat q1 best32.;
			informat q2 best32.;
			informat q3 $60.;
			informat q4 best32.;
			informat q5 best32.;
			informat q6 best32.;
			informat q7 best32.;
			informat q8 best32.;
			informat q9 best32.;
			informat q10 best32.;

			informat q11 best32.;
			informat q12 best32.;
			informat q13 best32.;
			informat q15 best32.;
			informat q16 best32.;
			informat q16_other $30.;
			informat q17 best32.;
			informat q17_other $30.;
			informat q18 best32.;
			informat q19 best32.;
			informat q20 best32.;

			informat q21 best32.;
			informat q21_other $30.;
			informat q22 best32.;
			informat q22_other $30.;
			informat q23 best32.;
			informat q23_other $30.;
			informat q24 best32.;
			informat q24_other $30.;
			informat q25 best32.;
			informat q26 best32.;
			informat q27 best32.;
			informat q27_other $30.;
			informat q28 best32.;
			informat q28_other $30.;
			informat q29 best32.;
			informat q30 best32.;

			informat q31 best32.;
			informat q31_other $30.;
			informat q32 best32.;
			informat q32_other $30.;
			informat q33 best32.;
			informat q33_other $30.;
			informat q34 best32.;
			informat q34_other $30.;
			informat q35 best32.;
			informat q35_other $30.;
			informat q36 best32.;
			informat q36_other $30.;
			informat q37 best32.;
			informat q37_other $30.;
			informat q38 best32.;
			informat q38_other $30.;
			informat q39 best32.;
			informat q39_other $30.;
			informat q40 best32.;
			informat q40_other $30.;

			informat q41 best32.;
			informat q41_other $30.;
			informat q42 best32.;
			informat q42_other $30.;
			informat q43 best32.;
			informat q43_other $30.;
			informat q44 best32.;
			informat q44_other $30.;
			informat q45 best32.;
			informat q45_other $30.;
			informat q46 best32.;
			informat q46_other $30.;
			informat q47 best32.;
			informat q47_other $30.;
			informat q48 best32.;
			informat q48_other $30.;
			informat q49 best32.;
			informat q49_other $30.;
			informat q50 best32.;
			informat q50_other $30.;

			informat q51 best32.;
			informat q51_other $30.;
			informat q52 best32.;
			informat q52_other $30.;
			informat q53 best32.;
			informat q53_other $30.;
			informat q54 best32.;
			informat q54_other $30.;
			informat q55 best32.;
			informat q55_other $30.;
			informat q56 best32.;
			informat q56_other $30.;
			informat q57 best32.;
			informat q57_other $30.;
			informat q58 best32.;
			informat q58_other $30.;
			informat q59 best32.;
			informat q59_other $30.;
			informat q60 best32.;

			informat q61 best32.;
			informat q62 best32.;
			informat q63 best32.;
			informat q64 best32.;
			informat q65 best32.;
			informat q66 best32.;
			informat q66_other $30.;
			informat q67 best32.;
			informat q67_other $30.;
			informat q68 best32.;
			informat q68_other $30.;
			informat q69 best32.;
			informat q69_other $30.;
			informat q70 best32.;

			informat q71 best32.;
			informat q72 best32.;
			informat q72_other $30.;
			informat q73 best32.;
			informat q73_other $30.;
			informat q74 best32.;
			informat q75 best32.;
			informat q76 best32.;
			informat q76_other $30.;
			informat q77 best32.;
			informat q77_other $30.;
			informat q78 best32.;
			informat q78_other $30.;
			informat q79 best32.;
			informat q79_other $30.;
			informat q80 best32.;
			informat q80_other $30.;

			informat q81 best32.;
			informat q81_other $30.;
			informat q82 best32.;
			informat q82_other $30.;
			informat q83 best32.;
			informat q83_other $30.;
			informat q84 best32.;
			informat q84_other $30.;
			informat q85 best32.;
			informat q85_other $30.;
			informat q86 best32.;
			informat q86_other $30.;
			informat q87 best32.;
			informat q87_other $30.;
			informat q88 best32.;
			informat q88_other $30.;
			informat q89 best32.;
			informat q89_other $30.;
			informat q90 best32.;
			informat q90_other $30.;

			informat q91 best32.;
			informat q91_other $30.;
			informat q92 best32.;
			informat q92_other $30.;
			informat q93 best32.;
			informat q93_other $30.;
			informat q94 best32.;
			informat q94_other $30.;
			informat q95 best32.;
			informat q95_other $30.;
			informat q96 best32.;
			informat q96_other $30.;
			informat q97 best32.;
			informat q97_other $30.;
			informat q98 best32.;
			informat q98_other $30.;
			informat q99 best32.;
			informat q99_other $30.;
			informat q100 best32.;
			informat q100_other $30.;

			informat q101 best32.;
			informat q101_other $30.;
			informat q102 best32.;
			informat q102_other $30.;
			informat q103 best32.;
			informat q103_other $30.;
			informat q104 best32.;
			informat q104_other $30.;
			informat q105 best32.;
			informat q106 best32.;
			informat q107 best32.;
			informat q108 best32.;
			informat q109 best32.;
			informat q110 best32.;

			informat q111 best32.;
			informat q111_other $30.;
			informat q112 best32.;
			informat q112_other $30.;
			informat q113 best32.;
			informat q113_other $30.;
			informat q114 best32.;
			informat q114_other $30.;
			informat q115 best32.;
			informat q116 best32.;
			informat q117 best32.;
			informat q117_other $30.;
			informat q118 best32.;
			informat q118_other $30.;
			informat q119 best32.;
			informat q120 best32.;

			informat q121 best32.;
			informat q121_other $30.;
			informat q122 best32.;
			informat q122_other $30.;
			informat q123 best32.;
			informat q123_other $30.;
			informat q124 best32.;
			informat q124_other $30.;
			informat q125 best32.;
			informat q125_other $30.;
			informat q126 best32.;
			informat q126_other $30.;
			informat q127 best32.;
			informat q127_other $30.;
			informat q128 best32.;
			informat q128_other $30.;
			informat q129 best32.;
			informat q129_other $30.;
			informat q130 best32.;
			informat q130_other $30.;

			informat q131 best32.;
			informat q131_other $30.;
			informat q132 best32.;
			informat q132_other $30.;
			informat q133 best32.;
			informat q133_other $30.;
			informat q134 best32.;
			informat q134_other $30.;
			informat q135 best32.;
			informat q135_other $30.;
			informat q136 best32.;
			informat q136_other $30.;
			informat q137 best32.;
			informat q137_other $30.;
			informat q138 best32.;
			informat q138_other $30.;
			informat q139 best32.;
			informat q139_other $30.;
			informat q140 best32.;
			informat q140_other $30.;

			informat q141 best32.;
			informat q141_other $30.;
			informat q142 best32.;
			informat q142_other $30.;
			informat q143 best32.;
			informat q143_other $30.;
			informat q144 best32.;
			informat q144_other $30.;
			informat q145 best32.;
			informat q145_other $30.;
			informat q146 best32.;
			informat q146_other $30.;
			informat q147 best32.;
			informat q147_other $30.;
			informat q148 best32.;
			informat q148_other $30.;
			informat q149 best32.;
			informat q149_other $30.;
			informat q150 best32.;

			informat q151 best32.;
			informat q152 best32.;
			informat q153 best32.;
			informat q154 best32.;
			informat q155 best32.;
			informat q156 best32.;
			informat q156_other $30.;
			informat q157 best32.;
			informat q157_other $30.;
			informat q158 best32.;
			informat q158_other $30.;
			informat q159 best32.;
			informat q159_other $30.;
			informat q160 best32.;

			informat q161 best32.;
			informat q162 best32.;
			informat q162_other $30.;
			informat q163 best32.;
			informat q163_other $30.;
			informat q164 best32.;
			informat q165 best32.;
			informat q166 best32.;
			informat q166_other $30.;
			informat q167 best32.;
			informat q167_other $30.;
			informat q168 best32.;
			informat q168_other $30.;
			informat q169 best32.;
			informat q169_other $30.;
			informat q170 best32.;
			informat q170_other $30.;

			informat q171 best32.;
			informat q171_other $30.;
			informat q172 best32.;
			informat q172_other $30.;
			informat q173 best32.;
			informat q173_other $30.;
			informat q174 best32.;
			informat q174_other $30.;
			informat q175 best32.;
			informat q175_other $30.;
			informat q176 best32.;
			informat q176_other $30.;
			informat q177 best32.;
			informat q177_other $30.;
			informat q178 best32.;
			informat q178_other $30.;
			informat q179 best32.;
			informat q179_other $30.;
			informat q180 best32.;
			informat q180_other $30.;

			informat q181 best32.;
			informat q181_other $30.;
			informat q182 best32.;
			informat q182_other $30.;
			informat q183 best32.;
			informat q183_other $30.;
			informat q184 best32.;
			informat q184_other $30.;
			informat q185 best32.;
			informat q185_other $30.;
			informat q186 best32.;
			informat q186_other $30.;
			informat q187 best32.;
			informat q187_other $30.;
			informat q188 best32.;
			informat q188_other $30.;
			informat q189 best32.;
			informat q189_other $30.;
			informat q190 best32.;
			informat q190_other $30.;

			informat q191 best32.;
			informat q191_other $30.;
			informat q192 best32.;
			informat q192_other $30.;
			informat q193 best32.;
			informat q193_other $30.;
			informat q194 best32.;
			informat q194_other $30.;
			informat q195 best32.;
			informat q196 best32.;
			informat q197 best32.;
			informat q198 best32.;
			informat q199 best32.;
			informat q200 best32.;

			informat q201 best32.;
			informat q201_other $30.;
			informat q202 best32.;
			informat q202_other $30.;
			informat q203 best32.;
			informat q203_other $30.;
			informat q204 best32.;
			informat q204_other $30.;
			informat q205 best32.;
			informat q206 best32.;
			informat q207 best32.;
			informat q207_other $30.;
			informat q208 best32.;
			informat q208_other $30.;
			informat q209 best32.;
			informat q210 best32.;

			informat q211 best32.;
			informat q211_other $30.;
			informat q212 best32.;
			informat q212_other $30.;
			informat q213 best32.;
			informat q213_other $30.;
			informat q214 best32.;
			informat q214_other $30.;
			informat q215 best32.;
			informat q215_other $30.;
			informat q216 best32.;
			informat q216_other $30.;
			informat q217 best32.;
			informat q217_other $30.;
			informat q218 best32.;
			informat q218_other $30.;
			informat q219 best32.;
			informat q219_other $30.;
			informat q220 best32.;
			informat q220_other $30.;

			informat q221 best32.;
			informat q221_other $30.;
			informat q222 best32.;
			informat q222_other $30.;
			informat q223 best32.;
			informat q223_other $30.;
			informat q224 best32.;
			informat q224_other $30.;
			informat q225 best32.;
			informat q225_other $30.;
			informat q226 best32.;
			informat q226_other $30.;
			informat q227 best32.;
			informat q227_other $30.;
			informat q228 best32.;
			informat q228_other $30.;
			informat q229 best32.;
			informat q229_other $30.;
			informat q230 best32.;
			informat q230_other $30.;

			informat q231 best32.;
			informat q231_other $30.;
			informat q232 best32.;
			informat q232_other $30.;
			informat q233 best32.;
			informat q233_other $30.;
			informat q234 best32.;
			informat q234_other $30.;
			informat q235 best32.;
			informat q235_other $30.;
			informat q236 best32.;
			informat q236_other $30.;
			informat q237 best32.;
			informat q237_other $30.;
			informat q238 best32.;
			informat q238_other $30.;
			informat q239 best32.;
			informat q239_other $30.;
			informat q240 best32.;

			informat q241 best32.;
			informat q242 best32.;
			informat q243 best32.;
			informat q244 best32.;
			informat q245 best32.;
			informat q246 best32.;
			informat q246_other $30.;
			informat q247 best32.;
			informat q247_other $30.;
			informat q248 best32.;
			informat q248_other $30.;
			informat q249 best32.;
			informat q249_other $30.;
			informat q250 best32.;

			informat q251 best32.;
			informat q252 best32.;
			informat q252_other $30.;
			informat q253 best32.;
			informat q253_other $30.;
			informat q254 best32.;
			informat q255 best32.;
			informat q256 best32.;
			informat q256_other $30.;
			informat q257 best32.;
			informat q257_other $30.;
			informat q258 best32.;
			informat q258_other $30.;
			informat q259 best32.;
			informat q259_other $30.;
			informat q260 best32.;
			informat q260_other $30.;

			informat q261 best32.;
			informat q261_other $30.;
			informat q262 best32.;
			informat q262_other $30.;
			informat q263 best32.;
			informat q263_other $30.;
			informat q264 best32.;
			informat q264_other $30.;
			informat q265 best32.;
			informat q265_other $30.;
			informat q266 best32.;
			informat q266_other $30.;
			informat q267 best32.;
			informat q267_other $30.;
			informat q268 best32.;
			informat q268_other $30.;
			informat q269 best32.;
			informat q269_other $30.;
			informat q270 best32.;
			informat q270_other $30.;

			informat q271 best32.;
			informat q271_other $30.;
			informat q272 best32.;
			informat q272_other $30.;
			informat q273 best32.;
			informat q273_other $30.;
			informat q274 best32.;
			informat q274_other $30.;
			informat q275 best32.;
			informat q275_other $30.;
			informat q276 best32.;
			informat q276_other $30.;
			informat q277 best32.;
			informat q277_other $30.;
			informat q278 best32.;
			informat q278_other $30.;
			informat q279 best32.;
			informat q279_other $30.;
			informat q280 best32.;
			informat q280_other $30.;

			informat q281 best32.;
			informat q281_other $30.;
			informat q282 best32.;
			informat q282_other $30.;
			informat q283 best32.;
			informat q283_other $30.;
			informat q284 best32.;
			informat q284_other $30.;
			informat q285 best32.;
			informat q286 best32.;
			informat q287 best32.;
			informat q288 best32.;
			informat q289 best32.;
			informat q290 best32.;

			informat q291 best32.;
			informat q291_other $30.;
			informat q292 best32.;
			informat q292_other $30.;
			informat q293 best32.;
			informat q293_other $30.;
			informat q294 best32.;
			informat q294_other $30.;
			informat q295 best32.;
			informat q296 best32.;
			informat q297 best32.;
			informat q297_other $30.;
			informat q298 best32.;
			informat q298_other $30.;
			informat q299 best32.;
			informat q300 best32.;

			informat q301 best32.;
			informat q301_other $30.;
			informat q302 best32.;
			informat q302_other $30.;
			informat q303 best32.;
			informat q303_other $30.;
			informat q304 best32.;
			informat q304_other $30.;
			informat q305 best32.;
			informat q305_other $30.;
			informat q306 best32.;
			informat q306_other $30.;
			informat q307 best32.;
			informat q307_other $30.;
			informat q308 best32.;
			informat q308_other $30.;
			informat q309 best32.;
			informat q309_other $30.;
			informat q310 best32.;
			informat q310_other $30.;

			informat q311 best32.;
			informat q311_other $30.;
			informat q312 best32.;
			informat q312_other $30.;
			informat q313 best32.;
			informat q313_other $30.;
			informat q314 best32.;
			informat q314_other $30.;
			informat q315 best32.;
			informat q315_other $30.;
			informat q316 best32.;
			informat q316_other $30.;
			informat q317 best32.;
			informat q317_other $30.;
			informat q318 best32.;
			informat q318_other $30.;
			informat q319 best32.;
			informat q319_other $30.;
			informat q320 best32.;
			informat q320_other $30.;

			informat q321 best32.;
			informat q321_other $30.;
			informat q322 best32.;
			informat q322_other $30.;
			informat q323 best32.;
			informat q323_other $30.;
			informat q324 best32.;
			informat q324_other $30.;
			informat q325 best32.;
			informat q325_other $30.;
			informat q326 best32.;
			informat q326_other $30.;
			informat q327 best32.;
			informat q327_other $30.;
			informat q328 best32.;
			informat q328_other $30.;
			informat q329 best32.;
			informat q329_other $30.;
			informat q330 best32.;

			informat q331 best32.;
			informat q332 best32.;
			informat q333 best32.;
			informat q334 best32.;
			informat q335 best32.;
			informat q336 best32.;
			informat q336_other $30.;
			informat q337 best32.;
			informat q337_other $30.;
			informat q338 best32.;
			informat q338_other $30.;
			informat q339 best32.;
			informat q339_other $30.;
			informat q340 best32.;

			informat q341 best32.;
			informat q342 best32.;
			informat q342_other $30.;
			informat q343 best32.;
			informat q343_other $30.;
			informat q344 best32.;
			informat q345 best32.;
			informat q346 best32.;
			informat q346_other $30.;
			informat q347 best32.;
			informat q347_other $30.;
			informat q348 best32.;
			informat q348_other $30.;
			informat q349 best32.;
			informat q349_other $30.;
			informat q350 best32.;
			informat q350_other $30.;

			informat q351 best32.;
			informat q351_other $30.;
			informat q352 best32.;
			informat q352_other $30.;
			informat q353 best32.;
			informat q353_other $30.;
			informat q354 best32.;
			informat q354_other $30.;
			informat q355 best32.;
			informat q355_other $30.;
			informat q356 best32.;
			informat q356_other $30.;
			informat q357 best32.;
			informat q357_other $30.;
			informat q358 best32.;
			informat q358_other $30.;
			informat q359 best32.;
			informat q359_other $30.;
			informat q360 best32.;
			informat q360_other $30.;

			informat q361 best32.;
			informat q361_other $30.;
			informat q362 best32.;
			informat q362_other $30.;
			informat q363 best32.;
			informat q363_other $30.;
			informat q364 best32.;
			informat q364_other $30.;
			informat q365 best32.;
			informat q365_other $30.;
			informat q366 best32.;
			informat q366_other $30.;
			informat q367 best32.;
			informat q367_other $30.;
			informat q368 best32.;
			informat q368_other $30.;
			informat q369 best32.;
			informat q369_other $30.;
			informat q370 best32.;
			informat q370_other $30.;

			informat q371 best32.;
			informat q371_other $30.;
			informat q372 best32.;
			informat q372_other $30.;
			informat q373 best32.;
			informat q373_other $30.;
			informat q374 best32.;
			informat q374_other $30.;
			informat q375 best32.;
			informat q376 best32.;
			informat q377 best32.;
			informat q378 best32.;
			informat q379 best32.;
			informat q379_other $30.;
			informat q380 best32.;
			informat q380_other $30.;

			informat q381 best32.;
			informat q382 best32.;
			informat q383 best32.;
			informat q384 $60.;
			informat q385 best32.;
			informat q386 best32.;
			informat q387 $60.;
			informat q388 best32.;
			informat q389 $60.;
			informat q390 best32.;

			informat q391 best32.;
			informat q392 best32.;
			informat q393 time12.;
			informat q394 best32.;
			informat q395 time12.;
			informat q396 best32.;
			informat q397 best32.;
			informat q397_other $60.;
			informat q398 best32.;
			informat q398_other $60.;
			informat q399 best32.;
			informat q399_other $60.;
			informat q400 $60.;
			informat q400_one best32.;
			informat q400_two best32.;
			informat q400_thr best32.;
			informat q400_for best32.;
			informat q400_fiv best32.;
			informat q400_six best32.;
			informat q400_other $60.;

			informat q401 best32.;
			informat q402 best32.;
			informat q403 best32.;
			informat q403_other $60.;
			informat q404 best32.;
			informat q404_other $60.;
			informat q405 best32.;
			informat q406 best32.;
			informat q407 best32.;
			informat q407_other $60.;
			informat q408 best32.;
			informat q409 $60.;
			informat q409_one best32.;
			informat q409_two best32.;
			informat q409_thr best32.;
			informat q409_other $60.;
			informat q410 best32.;

			informat q411 best32.;
			informat q412 best32.;
			informat q413 best32.;
			informat q414 best32.;
			informat q450 best32.;
			informat q450_other $150.;

			informat q451 best32.;
			informat q451_other $150.;
			informat q452 best32.;
			informat q452_other $150.;
			informat q453 best32.;
			informat q453_other $150.;
			informat q454 best32.;
			informat q454_other $150.;
			informat q455 best32.;
			informat q455_other $150.;
			informat q456 best32.;
			informat q456_other $150.;

			informat route $20.;
			informat direction $15.;
			informat daypart_code best32.;
			informat daypart $20.;
			informat work_tour_code best32.;
			informat work_tour $150.;
			informat trip_purp_code best32.;
			informat trip_purp $60.;
			informat hb_trip_purp_code best32.;
			informat hb_trip_purp $60.;
			informat nhb_trip_code best32.;
			informat nhb_trip $60.;
			informat origin_type_code best32.;
			informat origin_type $60.;
			informat dest_type_code best32.;
			informat dest_type $60.;

			informat hb_access_code best32.;
			informat hb_access $60.;
			informat hb_access_min best32.;
			informat hb_access_cat_time_code best32.;
			informat hb_access_cat_time $20.;
			informat hb_access_q16_recode best32.;
			informat hb_access_q16 $20.;
			informat hb_access_mile best32.;
			informat hb_access_dist_cat_code best32.;
			informat hb_access_dist_cat $20.;
			informat hb_access_q17_recode best32.;
			informat hb_access_q17 $20.;

			informat hb_egress_code best32.;
			informat hb_egress $60.;
			informat hb_egress_min best32.;
			informat hb_egress_cat_time_code best32.;
			informat hb_egress_cat_time $20.;
			informat hb_egress_q379_recode best32.;
			informat hb_access_q379 $20.;
			informat hb_egress_mile best32.;
			informat hb_egress_dist_cat_code best32.;
			informat hb_egress_dist_cat $20.;
			informat hb_egress_q380_recode best32.;
			informat hb_egress_q380 $20.;

			informat employed_code best32.;
			informat employed $30.;
			informat student_code best32.;
			informat sudent $30.;
			informat employed_or_student_code best32.;
			informat employed_or_student $30.;
			informat fare_type_q397_code best32.;
			informat fare_type_q397 $30.;
			informat clipper_code best32.;
			informat clipper $30.;
			informat why_not_clipper_q399_code best32.;
			informat why_not_clipper $60.;

			informat workers_in_hh_q403_code best32.;
			informat workers_in_hh_q403 $30.;
			informat vehicles_in_hh_q404_code best32.;
			informat vehicles_in_hh_q404 $30.;
			informat age_group_q405_code best32.;
			informat age_group_q405 $20.;
			informat hispanic_q406_code best32.;
			informat hispanic_q406 $120.;
			informat race_q407_code best32.;
			informat race_q407 $30.;
			informat language_q409_code best32.;
			informat language_q409 $30.;

			informat income_code best32.;
			informat income $30.;
			informat trip_legs_code best32.;
			informat trip_legs $30.;
			informat weight best32.;

			input    id  
			         q1  
			         q2  
			         q3 $ 
			         q4  
			         q5  
			         q6  
			         q7  
			         q8  
			         q9  
			         q10  

			         q11  
			         q12  
			         q13   
			         q15  
			         q16  
			         q16_other $ 
			         q17  
			         q17_other $ 
			         q18  
			         q19  
			         q20  

			         q21  
			         q21_other $ 
			         q22  
			         q22_other $ 
			         q23  
			         q23_other $ 
			         q24  
			         q24_other $ 
			         q25  
			         q26  
			         q27  
			         q27_other $ 
			         q28  
			         q28_other $ 
			         q29  
			         q30  

			         q31  
			         q31_other $ 
			         q32  
			         q32_other $ 
			         q33  
			         q33_other $ 
			         q34  
			         q34_other $ 
			         q35  
			         q35_other $ 
			         q36  
			         q36_other $ 
			         q37  
			         q37_other $ 
			         q38  
			         q38_other $ 
			         q39  
			         q39_other $ 
			         q40  
			         q40_other $ 

			         q41  
			         q41_other $ 
			         q42  
			         q42_other $ 
			         q43  
			         q43_other $ 
			         q44  
			         q44_other $ 
			         q45  
			         q45_other $ 
			         q46  
			         q46_other $ 
			         q47  
			         q47_other $ 
			         q48  
			         q48_other $ 
			         q49  
			         q49_other $ 
			         q50  
			         q50_other $ 

			         q51  
			         q51_other $ 
			         q52  
			         q52_other $ 
			         q53  
			         q53_other $ 
			         q54  
			         q54_other $ 
			         q55  
			         q55_other $ 
			         q56  
			         q56_other $ 
			         q57  
			         q57_other $ 
			         q58  
			         q58_other $ 
			         q59  
			         q59_other $ 
			         q60  

			         q61  
			         q62  
			         q63  
			         q64  
			         q65  
			         q66  
			         q66_other $ 
			         q67  
			         q67_other $ 
			         q68  
			         q68_other $ 
			         q69  
			         q69_other $ 
			         q70  

			         q71  
			         q72  
			         q72_other $ 
			         q73  
			         q73_other $ 
			         q74  
			         q75  
			         q76  
			         q76_other $ 
			         q77  
			         q77_other $ 
			         q78  
			         q78_other $ 
			         q79  
			         q79_other $ 
			         q80  
			         q80_other $ 

			         q81  
			         q81_other $ 
			         q82  
			         q82_other $ 
			         q83  
			         q83_other $ 
			         q84  
			         q84_other $ 
			         q85  
			         q85_other $ 
			         q86  
			         q86_other $ 
			         q87  
			         q87_other $ 
			         q88  
			         q88_other $ 
			         q89  
			         q89_other $ 
			         q90  
			         q90_other $ 

			         q91  
			         q91_other $ 
			         q92  
			         q92_other $ 
			         q93  
			         q93_other $ 
			         q94  
			         q94_other $ 
			         q95  
			         q95_other $ 
			         q96  
			         q96_other $ 
			         q97  
			         q97_other $ 
			         q98  
			         q98_other $ 
			         q99  
			         q99_other $ 
			         q100  
			         q100_other $ 

			         q101  
			         q101_other $ 
			         q102  
			         q102_other $ 
			         q103  
			         q103_other $ 
			         q104  
			         q104_other $ 
			         q105  
			         q106  
			         q107  
			         q108  
			         q109  
			         q110  

			         q111  
			         q111_other $ 
			         q112  
			         q112_other $ 
			         q113  
			         q113_other $ 
			         q114  
			         q114_other $ 
			         q115  
			         q116  
			         q117  
			         q117_other $ 
			         q118  
			         q118_other $ 
			         q119  
			         q120  

			         q121  
			         q121_other $ 
			         q122  
			         q122_other $ 
			         q123  
			         q123_other $ 
			         q124  
			         q124_other $ 
			         q125  
			         q125_other $ 
			         q126  
			         q126_other $ 
			         q127  
			         q127_other $ 
			         q128  
			         q128_other $ 
			         q129  
			         q129_other $ 
			         q130  
			         q130_other $ 

			         q131  
			         q131_other $ 
			         q132  
			         q132_other $ 
			         q133  
			         q133_other $ 
			         q134  
			         q134_other $ 
			         q135  
			         q135_other $ 
			         q136  
			         q136_other $ 
			         q137  
			         q137_other $ 
			         q138  
			         q138_other $ 
			         q139  
			         q139_other $ 
			         q140  
			         q140_other $ 

			         q141  
			         q141_other $ 
			         q142  
			         q142_other $ 
			         q143  
			         q143_other $ 
			         q144  
			         q144_other $ 
			         q145  
			         q145_other $ 
			         q146  
			         q146_other $ 
			         q147  
			         q147_other $ 
			         q148  
			         q148_other $ 
			         q149  
			         q149_other $ 
			         q150  

			         q151  
			         q152  
			         q153  
			         q154  
			         q155  
			         q156  
			         q156_other $ 
			         q157  
			         q157_other $ 
			         q158  
			         q158_other $ 
			         q159  
			         q159_other $ 
			         q160  

			         q161  
			         q162  
			         q162_other $ 
			         q163  
			         q163_other $ 
			         q164  
			         q165  
			         q166  
			         q166_other $ 
			         q167  
			         q167_other $ 
			         q168  
			         q168_other $ 
			         q169  
			         q169_other $ 
			         q170  
			         q170_other $ 

			         q171  
			         q171_other $ 
			         q172  
			         q172_other $ 
			         q173  
			         q173_other $ 
			         q174  
			         q174_other $ 
			         q175  
			         q175_other $ 
			         q176  
			         q176_other $ 
			         q177  
			         q177_other $ 
			         q178  
			         q178_other $ 
			         q179  
			         q179_other $ 
			         q180  
			         q180_other $ 

			         q181  
			         q181_other $ 
			         q182  
			         q182_other $ 
			         q183  
			         q183_other $ 
			         q184  
			         q184_other $ 
			         q185  
			         q185_other $ 
			         q186  
			         q186_other $ 
			         q187  
			         q187_other $ 
			         q188  
			         q188_other $ 
			         q189  
			         q189_other $ 
			         q190  
			         q190_other $ 

			         q191  
			         q191_other $ 
			         q192  
			         q192_other $ 
			         q193  
			         q193_other $ 
			         q194  
			         q194_other $ 
			         q195  
			         q196  
			         q197  
			         q198  
			         q199  
			         q200  

			         q201  
			         q201_other $ 
			         q202  
			         q202_other $ 
			         q203  
			         q203_other $ 
			         q204  
			         q204_other $ 
			         q205  
			         q206  
			         q207  
			         q207_other $ 
			         q208  
			         q208_other $ 
			         q209  
			         q210  

			         q211  
			         q211_other $ 
			         q212  
			         q212_other $ 
			         q213  
			         q213_other $ 
			         q214  
			         q214_other $ 
			         q215  
			         q215_other $ 
			         q216  
			         q216_other $ 
			         q217  
			         q217_other $ 
			         q218  
			         q218_other $ 
			         q219  
			         q219_other $ 
			         q220  
			         q220_other $ 

			         q221  
			         q221_other $ 
			         q222  
			         q222_other $ 
			         q223  
			         q223_other $ 
			         q224  
			         q224_other $ 
			         q225  
			         q225_other $ 
			         q226  
			         q226_other $ 
			         q227  
			         q227_other $ 
			         q228  
			         q228_other $ 
			         q229  
			         q229_other $ 
			         q230  
			         q230_other $ 

			         q231  
			         q231_other $ 
			         q232  
			         q232_other $ 
			         q233  
			         q233_other $ 
			         q234  
			         q234_other $ 
			         q235  
			         q235_other $ 
			         q236  
			         q236_other $ 
			         q237  
			         q237_other $ 
			         q238  
			         q238_other $ 
			         q239  
			         q239_other $ 
			         q240  

			         q241  
			         q242  
			         q243  
			         q244  
			         q245  
			         q246  
			         q246_other $ 
			         q247  
			         q247_other $ 
			         q248  
			         q248_other $ 
			         q249  
			         q249_other $ 
			         q250  

			         q251  
			         q252  
			         q252_other $ 
			         q253  
			         q253_other $ 
			         q254  
			         q255  
			         q256  
			         q256_other $ 
			         q257  
			         q257_other $ 
			         q258  
			         q258_other $ 
			         q259  
			         q259_other $ 
			         q260  
			         q260_other $ 

			         q261  
			         q261_other $ 
			         q262  
			         q262_other $ 
			         q263  
			         q263_other $ 
			         q264  
			         q264_other $ 
			         q265  
			         q265_other $ 
			         q266  
			         q266_other $ 
			         q267  
			         q267_other $ 
			         q268  
			         q268_other $ 
			         q269  
			         q269_other $ 
			         q270  
			         q270_other $ 

			         q271  
			         q271_other $ 
			         q272  
			         q272_other $ 
			         q273  
			         q273_other $ 
			         q274  
			         q274_other $ 
			         q275  
			         q275_other $ 
			         q276  
			         q276_other $ 
			         q277  
			         q277_other $ 
			         q278  
			         q278_other $ 
			         q279  
			         q279_other $ 
			         q280  
			         q280_other $ 

			         q281  
			         q281_other $ 
			         q282  
			         q282_other $ 
			         q283  
			         q283_other $ 
			         q284  
			         q284_other $ 
			         q285  
			         q286  
			         q287  
			         q288  
			         q289  
			         q290  

			         q291  
			         q291_other $ 
			         q292  
			         q292_other $ 
			         q293  
			         q293_other $ 
			         q294  
			         q294_other $ 
			         q295  
			         q296  
			         q297  
			         q297_other $ 
			         q298  
			         q298_other $ 
			         q299  
			         q300  

			         q301  
			         q301_other $ 
			         q302  
			         q302_other $ 
			         q303  
			         q303_other $ 
			         q304  
			         q304_other $ 
			         q305  
			         q305_other $ 
			         q306  
			         q306_other $ 
			         q307  
			         q307_other $ 
			         q308  
			         q308_other $ 
			         q309  
			         q309_other $ 
			         q310  
			         q310_other $ 

			         q311  
			         q311_other $ 
			         q312  
			         q312_other $ 
			         q313  
			         q313_other $ 
			         q314  
			         q314_other $ 
			         q315  
			         q315_other $ 
			         q316  
			         q316_other $ 
			         q317  
			         q317_other $ 
			         q318  
			         q318_other $ 
			         q319  
			         q319_other $ 
			         q320  
			         q320_other $ 

			         q321  
			         q321_other $ 
			         q322  
			         q322_other $ 
			         q323  
			         q323_other $ 
			         q324  
			         q324_other $ 
			         q325  
			         q325_other $ 
			         q326  
			         q326_other $ 
			         q327  
			         q327_other $ 
			         q328  
			         q328_other $ 
			         q329  
			         q329_other $ 
			         q330  

			         q331  
			         q332  
			         q333  
			         q334  
			         q335  
			         q336  
			         q336_other $ 
			         q337  
			         q337_other $ 
			         q338  
			         q338_other $ 
			         q339  
			         q339_other $ 
			         q340  

			         q341  
			         q342  
			         q342_other $ 
			         q343  
			         q343_other $ 
			         q344  
			         q345  
			         q346  
			         q346_other $ 
			         q347  
			         q347_other $ 
			         q348  
			         q348_other $ 
			         q349  
			         q349_other $ 
			         q350  
			         q350_other $ 

			         q351  
			         q351_other $ 
			         q352  
			         q352_other $ 
			         q353  
			         q353_other $ 
			         q354  
			         q354_other $ 
			         q355  
			         q355_other $ 
			         q356  
			         q356_other $ 
			         q357  
			         q357_other $ 
			         q358  
			         q358_other $ 
			         q359  
			         q359_other $ 
			         q360  
			         q360_other $ 

			         q361  
			         q361_other $ 
			         q362  
			         q362_other $ 
			         q363  
			         q363_other $ 
			         q364  
			         q364_other $ 
			         q365  
			         q365_other $ 
			         q366  
			         q366_other $ 
			         q367  
			         q367_other $ 
			         q368  
			         q368_other $ 
			         q369  
			         q369_other $ 
			         q370  
			         q370_other $ 

			         q371  
			         q371_other $ 
			         q372  
			         q372_other $ 
			         q373  
			         q373_other $ 
			         q374  
			         q374_other $ 
			         q375  
			         q376  
			         q377  
			         q378  
			         q379  
			         q379_other $ 
			         q380  
			         q380_other $ 

			         q381  
			         q382  
			         q383  
			         q384 $ 
			         q385  
			         q386  
			         q387 $ 
			         q388  
			         q389 $ 
			         q390  

			         q391  
			         q392  
			         q393  
			         q394  
			         q395  
			         q396  
			         q397  
			         q397_other $ 
			         q398  
			         q398_other $ 
			         q399  
			         q399_other $ 
			         q400 $ 
			         q400_one  
			         q400_two  
			         q400_thr  
			         q400_for  
			         q400_fiv  
			         q400_six  
			         q400_other $ 

			         q401  
			         q402  
			         q403  
			         q403_other $ 
			         q404  
			         q404_other $ 
			         q405  
			         q406  
			         q407  
			         q407_other $ 
			         q408  
			         q409 $ 
			         q409_one  
			         q409_two  
			         q409_thr   
			         q409_other $ 
			         q410  

			         q411  
			         q412  
			         q413  
			         q414  
			         q450  
			         q450_other $ 

			         q451  
			         q451_other $ 
			         q452  
			         q452_other $ 
			         q453  
			         q453_other $ 
			         q454  
			         q454_other $ 
			         q455  
			         q455_other $ 
			         q456  
			         q456_other $ 

			         route $ 
			         direction $ 
			         daypart_code  
			         daypart $ 
			         work_tour_code  
			         work_tour $ 
			         trip_purp_code  
			         trip_purp $ 
			         hb_trip_purp_code  
			         hb_trip_purp $ 
			         nhb_trip_code  
			         nhb_trip $ 
			         origin_type_code  
			         origin_type $ 
			         dest_type_code  
			         dest_type $ 

			         hb_access_code  
			         hb_access $ 
			         hb_access_min  
			         hb_access_cat_time_code  
			         hb_access_cat_time $ 
			         hb_access_q16_recode  
			         hb_access_q16 $ 
			         hb_access_mile  
			         hb_access_dist_cat_code  
			         hb_access_dist_cat $ 
			         hb_access_q17_recode  
			         hb_access_q17 $ 

			         hb_egress_code  
			         hb_egress $ 
			         hb_egress_min  
			         hb_egress_cat_time_code  
			         hb_egress_cat_time $ 
			         hb_egress_q379_recode  
			         hb_access_q379 $ 
			         hb_egress_mile  
			         hb_egress_dist_cat_code  
			         hb_egress_dist_cat $ 
			         hb_egress_q380_recode  
			         hb_egress_q380 $ 

			         employed_code  
			         employed $ 
			         student_code  
			         sudent $ 
			         employed_or_student_code  
			         employed_or_student $ 
			         fare_type_q397_code  
			         fare_type_q397 $ 
			         clipper_code  
			         clipper $ 
			         why_not_clipper_q399_code  
			         why_not_clipper $ 

			         workers_in_hh_q403_code  
			         workers_in_hh_q403 $ 
			         vehicles_in_hh_q404_code  
			         vehicles_in_hh_q404 $ 
			         age_group_q405_code  
			         age_group_q405 $ 
			         hispanic_q406_code  
			         hispanic_q406 $ 
			         race_q407_code  
			         race_q407 $ 
			         language_q409_code  
			         language_q409 $ 

			         income_code  
			         income $ 
			         trip_legs_code  
			         trip_legs $ 
			         weight;

run;

data OnBoard.rawAcTransitWeekendCati; set input;
run;

* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* Read in the raw weekday gis file;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
data input; infile "&weekday_gis_file." delimiter = ',' missover scanover dsd
            lrecl = 32767 firstobs = 2;

			format id best12.;
			format q best12.;
			format qcode $20.;
			format location $120.;
			format location_details $120.;
			format point_x best24.;
			format point_y best24.;

			informat id best32.;
			informat q best32.;
			informat qcode $20.;
			informat location $120.;
			informat location_details $120.;
			informat point_x best32.;
			informat point_y best32.;

			input    id  
			         q  
			         qcode $
                     location $
                     location_details $ 
			         point_x  
			         point_y;

run;

data OnBoard.rawAcTransitWeekdayGis; set input;
run;

* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* Read in the raw weekend gis file;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
data input; infile "&weekend_gis_file." delimiter = ',' missover scanover dsd
            lrecl = 32767 firstobs = 2;

			format id best12.;
			format q best12.;
			format qcode $20.;
			format location $120.;
			format location_details $120.;
			format point_x best24.;
			format point_y best24.;

			informat id best32.;
			informat q best32.;
			informat qcode $20.;
			informat location $120.;
			informat location_details $120.;
			informat point_x best32.;
			informat point_y best32.;

			input    id  
			         q  
			         qcode $
                     location $
                     location_details $ 
			         point_x  
			         point_y;

run;

data OnBoard.rawAcTransitWeekendGis; set input;
run;

* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* Read in the raw weekday field file;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
data input; infile "&weekday_info_file." delimiter = ',' missover scanover dsd
            lrecl = 32767 firstobs = 2;

			format id best12.;
			format route $20.;
			format direction $20.;
			format daypart_code best12.;
			format daypart $20.;
			format field_language_code best12.;
			format field_language $20.;
			format origin_type_code best12.;
			format origin_type $40.;
			format dest_type_code best12.;
			format dest_type $40.;
			format boarding_intersection $120.;
			format boarding_lat $40.;
			format boarding_long $40.;
			format alighting_intersection $120.;
			format alighting_lat $40.;
			format alighting_long $40.;

			informat id best32.;
			informat route $20.;
			informat direction $20.;
			informat daypart_code best32.;
			informat daypart $20.;
			informat field_language_code best32.;
			informat field_language $20.;
			informat origin_type_code best32.;
			informat origin_type $40.;
			informat dest_type_code best32.;
			informat dest_type $40.;
			informat boarding_intersection $120.;
			informat boarding_lat $40.;
			informat boarding_long $40.;
			informat alighting_intersection $120.;
			informat alighting_lat $40.;
			informat alighting_long $40.;

			input id  
		          route $
				  direction $
		          daypart_code  
		          daypart $
		          field_language_code  
		          field_language $
		          origin_type_code  
		          origin_type $
		          dest_type_code  
		          dest_type $
		          boarding_intersection $
		          boarding_lat $  
		          boarding_long $  
		          alighting_intersection $
		          alighting_lat $  
		          alighting_long $;


run;

data OnBoard.rawAcTransitWeekdayInfo; set input;
run;

* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* Read in the raw weekend field file;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
data input; infile "&weekend_info_file." delimiter = ',' missover scanover dsd
            lrecl = 32767 firstobs = 2;

			format id best12.;
			format route $20.;
			format direction $20.;
			format daypart_code best12.;
			format daypart $20.;
			format field_language_code best12.;
			format field_language $20.;
			format origin_type_code best12.;
			format origin_type $40.;
			format dest_type_code best12.;
			format dest_type $40.;
			format boarding_intersection $120.;
			format boarding_lat $40.;
			format boarding_long $40.;
			format alighting_intersection $120.;
			format alighting_lat $40.;
			format alighting_long $40.;

			informat id best32.;
			informat route $20.;
			informat direction $20.;
			informat daypart_code best32.;
			informat daypart $20.;
			informat field_language_code best32.;
			informat field_language $20.;
			informat origin_type_code best32.;
			informat origin_type $40.;
			informat dest_type_code best32.;
			informat dest_type $40.;
			informat boarding_intersection $120.;
			informat boarding_lat $40.;
			informat boarding_long $40.;
			informat alighting_intersection $120.;
			informat alighting_lat $40.;
			informat alighting_long $40.;

			input id  
		          route $
				  direction $
		          daypart_code  
		          daypart $
		          field_language_code  
		          field_language $
		          origin_type_code  
		          origin_type $
		          dest_type_code  
		          dest_type $
		          boarding_intersection $
		          boarding_lat $  
		          boarding_long $  
		          alighting_intersection $
		          alighting_lat $  
		          alighting_long $;


run;

data OnBoard.rawAcTransitWeekendInfo; set input;
run;

* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* Read in the raw weekday day-of-week file;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
proc import datafile = "&weekday_dow_file."
            dbms = dlm
			out = input replace;
			delimiter = ",";
			getnames = yes;
			guessingrows = 500;
run;


data OnBoard.rawAcTransitWeekdayDow; set input;
run;

* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* Read in the raw weekend day-of-week file;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
proc import datafile = "&weekend_dow_file."
            dbms = dlm
			out = input replace;
			delimiter = ",";
			getnames = yes;
			guessingrows = 500;
run;


data OnBoard.rawAcTransitWeekendDow; set input;
run;

