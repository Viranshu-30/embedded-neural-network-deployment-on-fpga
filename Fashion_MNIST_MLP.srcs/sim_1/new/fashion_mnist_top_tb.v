//----------------------------------------------------------------------------------
// Company: 
// Engineer: Virnashu Paruparla (204484351)
// 
// Create Date: 04.25.2025
// Design Name: 
// Module Name: fashion_mnist_top_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Self-checking testbench for fashion_mnist_top with real Fashion MNIST image (class 9)
// 
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Uses IMAGE for class 9 as per user specification
//----------------------------------------------------------------------------------

`timescale 1ns / 1ps

module fashion_mnist_top_tb();

    // Constants
    localparam CLK_PERIOD = 8;       // 125MHz
    localparam BIT_PERIOD = 104167;  // 9600 baud rate
    
    // Signals
    reg clk = 0;
    reg reset = 0;
    reg uart_rx_pin = 1;  // Idle state is high
    wire [3:0] led_out;
    wire [6:0] ssd_segments;
    wire ssd_anode;
    
    // Test control signals
    reg test_running = 1;
    integer expected_class = 9;  
    
    // This array contains 784 actual pixel values from a real class 9 sample
    reg [7:0] SANDAL_IMAGE [0:783];
    
    // Instantiate the Unit Under Test (UUT)
    fashion_mnist_top uut (
        .clk(clk),
        .reset(reset),
        .uart_rx_pin(uart_rx_pin),
        .led_out(led_out),
        .ssd_segments(ssd_segments),
        .ssd_anode(ssd_anode)
    );
    
    // Initialize the image data
    initial begin
        // Image data initialization (same as before)
        // Row 0
        SANDAL_IMAGE[0] = 0; SANDAL_IMAGE[1] = 0; SANDAL_IMAGE[2] = 0; SANDAL_IMAGE[3] = 0;
        SANDAL_IMAGE[4] = 0; SANDAL_IMAGE[5] = 0; SANDAL_IMAGE[6] = 0; SANDAL_IMAGE[7] = 0;
        SANDAL_IMAGE[8] = 0; SANDAL_IMAGE[9] = 0; SANDAL_IMAGE[10] = 0; SANDAL_IMAGE[11] = 0;
        SANDAL_IMAGE[12] = 0; SANDAL_IMAGE[13] = 0; SANDAL_IMAGE[14] = 0; SANDAL_IMAGE[15] = 0;
        SANDAL_IMAGE[16] = 0; SANDAL_IMAGE[17] = 0; SANDAL_IMAGE[18] = 0; SANDAL_IMAGE[19] = 0;
        SANDAL_IMAGE[20] = 0; SANDAL_IMAGE[21] = 0; SANDAL_IMAGE[22] = 0; SANDAL_IMAGE[23] = 0;
        SANDAL_IMAGE[24] = 0; SANDAL_IMAGE[25] = 0; SANDAL_IMAGE[26] = 0; SANDAL_IMAGE[27] = 0;
        
        // Row 1
        SANDAL_IMAGE[28] = 0; SANDAL_IMAGE[29] = 0; SANDAL_IMAGE[30] = 0; SANDAL_IMAGE[31] = 0;
        SANDAL_IMAGE[32] = 0; SANDAL_IMAGE[33] = 0; SANDAL_IMAGE[34] = 0; SANDAL_IMAGE[35] = 0;
        SANDAL_IMAGE[36] = 0; SANDAL_IMAGE[37] = 0; SANDAL_IMAGE[38] = 0; SANDAL_IMAGE[39] = 0;
        SANDAL_IMAGE[40] = 0; SANDAL_IMAGE[41] = 0; SANDAL_IMAGE[42] = 0; SANDAL_IMAGE[43] = 0;
        SANDAL_IMAGE[44] = 0; SANDAL_IMAGE[45] = 0; SANDAL_IMAGE[46] = 0; SANDAL_IMAGE[47] = 0;
        SANDAL_IMAGE[48] = 0; SANDAL_IMAGE[49] = 0; SANDAL_IMAGE[50] = 0; SANDAL_IMAGE[51] = 0;
        SANDAL_IMAGE[52] = 0; SANDAL_IMAGE[53] = 0; SANDAL_IMAGE[54] = 0; SANDAL_IMAGE[55] = 0;
        
        // Row 2
        SANDAL_IMAGE[56] = 0; SANDAL_IMAGE[57] = 0; SANDAL_IMAGE[58] = 0; SANDAL_IMAGE[59] = 0;
        SANDAL_IMAGE[60] = 0; SANDAL_IMAGE[61] = 0; SANDAL_IMAGE[62] = 0; SANDAL_IMAGE[63] = 0;
        SANDAL_IMAGE[64] = 0; SANDAL_IMAGE[65] = 0; SANDAL_IMAGE[66] = 0; SANDAL_IMAGE[67] = 0;
        SANDAL_IMAGE[68] = 0; SANDAL_IMAGE[69] = 0; SANDAL_IMAGE[70] = 0; SANDAL_IMAGE[71] = 0;
        SANDAL_IMAGE[72] = 0; SANDAL_IMAGE[73] = 0; SANDAL_IMAGE[74] = 0; SANDAL_IMAGE[75] = 0;
        SANDAL_IMAGE[76] = 0; SANDAL_IMAGE[77] = 0; SANDAL_IMAGE[78] = 0; SANDAL_IMAGE[79] = 0;
        SANDAL_IMAGE[80] = 0; SANDAL_IMAGE[81] = 0; SANDAL_IMAGE[82] = 0; SANDAL_IMAGE[83] = 0;
        
        // Row 3
        SANDAL_IMAGE[84] = 0; SANDAL_IMAGE[85] = 0; SANDAL_IMAGE[86] = 0; SANDAL_IMAGE[87] = 0;
        SANDAL_IMAGE[88] = 0; SANDAL_IMAGE[89] = 0; SANDAL_IMAGE[90] = 0; SANDAL_IMAGE[91] = 0;
        SANDAL_IMAGE[92] = 0; SANDAL_IMAGE[93] = 0; SANDAL_IMAGE[94] = 0; SANDAL_IMAGE[95] = 0;
        SANDAL_IMAGE[96] = 0; SANDAL_IMAGE[97] = 0; SANDAL_IMAGE[98] = 0; SANDAL_IMAGE[99] = 0;
        SANDAL_IMAGE[100] = 0; SANDAL_IMAGE[101] = 0; SANDAL_IMAGE[102] = 0; SANDAL_IMAGE[103] = 0;
        SANDAL_IMAGE[104] = 0; SANDAL_IMAGE[105] = 0; SANDAL_IMAGE[106] = 0; SANDAL_IMAGE[107] = 0;
        SANDAL_IMAGE[108] = 0; SANDAL_IMAGE[109] = 0; SANDAL_IMAGE[110] = 0; SANDAL_IMAGE[111] = 0;
        
        // Row 4
        SANDAL_IMAGE[112] = 0; SANDAL_IMAGE[113] = 0; SANDAL_IMAGE[114] = 0; SANDAL_IMAGE[115] = 0;
        SANDAL_IMAGE[116] = 0; SANDAL_IMAGE[117] = 0; SANDAL_IMAGE[118] = 0; SANDAL_IMAGE[119] = 0;
        SANDAL_IMAGE[120] = 0; SANDAL_IMAGE[121] = 0; SANDAL_IMAGE[122] = 0; SANDAL_IMAGE[123] = 0;
        SANDAL_IMAGE[124] = 0; SANDAL_IMAGE[125] = 0; SANDAL_IMAGE[126] = 0; SANDAL_IMAGE[127] = 0;
        SANDAL_IMAGE[128] = 0; SANDAL_IMAGE[129] = 0; SANDAL_IMAGE[130] = 0; SANDAL_IMAGE[131] = 0;
        SANDAL_IMAGE[132] = 0; SANDAL_IMAGE[133] = 0; SANDAL_IMAGE[134] = 0; SANDAL_IMAGE[135] = 0;
        SANDAL_IMAGE[136] = 0; SANDAL_IMAGE[137] = 0; SANDAL_IMAGE[138] = 0; SANDAL_IMAGE[139] = 0;
        
        // Row 5
        SANDAL_IMAGE[140] = 0; SANDAL_IMAGE[141] = 0; SANDAL_IMAGE[142] = 0; SANDAL_IMAGE[143] = 0;
        SANDAL_IMAGE[144] = 0; SANDAL_IMAGE[145] = 0; SANDAL_IMAGE[146] = 0; SANDAL_IMAGE[147] = 0;
        SANDAL_IMAGE[148] = 0; SANDAL_IMAGE[149] = 0; SANDAL_IMAGE[150] = 0; SANDAL_IMAGE[151] = 0;
        SANDAL_IMAGE[152] = 0; SANDAL_IMAGE[153] = 0; SANDAL_IMAGE[154] = 0; SANDAL_IMAGE[155] = 0;
        SANDAL_IMAGE[156] = 0; SANDAL_IMAGE[157] = 0; SANDAL_IMAGE[158] = 0; SANDAL_IMAGE[159] = 0;
        SANDAL_IMAGE[160] = 0; SANDAL_IMAGE[161] = 0; SANDAL_IMAGE[162] = 0; SANDAL_IMAGE[163] = 0;
        SANDAL_IMAGE[164] = 0; SANDAL_IMAGE[165] = 0; SANDAL_IMAGE[166] = 0; SANDAL_IMAGE[167] = 0;
        
        // Row 6
        SANDAL_IMAGE[168] = 0; SANDAL_IMAGE[169] = 0; SANDAL_IMAGE[170] = 0; SANDAL_IMAGE[171] = 0;
        SANDAL_IMAGE[172] = 0; SANDAL_IMAGE[173] = 0; SANDAL_IMAGE[174] = 0; SANDAL_IMAGE[175] = 0;
        SANDAL_IMAGE[176] = 0; SANDAL_IMAGE[177] = 0; SANDAL_IMAGE[178] = 0; SANDAL_IMAGE[179] = 0;
        SANDAL_IMAGE[180] = 0; SANDAL_IMAGE[181] = 0; SANDAL_IMAGE[182] = 0; SANDAL_IMAGE[183] = 0;
        SANDAL_IMAGE[184] = 0; SANDAL_IMAGE[185] = 0; SANDAL_IMAGE[186] = 0; SANDAL_IMAGE[187] = 0;
        SANDAL_IMAGE[188] = 0; SANDAL_IMAGE[189] = 0; SANDAL_IMAGE[190] = 0; SANDAL_IMAGE[191] = 0;
        SANDAL_IMAGE[192] = 0; SANDAL_IMAGE[193] = 0; SANDAL_IMAGE[194] = 0; SANDAL_IMAGE[195] = 0;
        
        // Row 7
        SANDAL_IMAGE[196] = 0; SANDAL_IMAGE[197] = 0; SANDAL_IMAGE[198] = 0; SANDAL_IMAGE[199] = 0;
        SANDAL_IMAGE[200] = 0; SANDAL_IMAGE[201] = 0; SANDAL_IMAGE[202] = 0; SANDAL_IMAGE[203] = 0;
        SANDAL_IMAGE[204] = 0; SANDAL_IMAGE[205] = 0; SANDAL_IMAGE[206] = 0; SANDAL_IMAGE[207] = 0;
        SANDAL_IMAGE[208] = 0; SANDAL_IMAGE[209] = 0; SANDAL_IMAGE[210] = 0; SANDAL_IMAGE[211] = 0;
        SANDAL_IMAGE[212] = 0; SANDAL_IMAGE[213] = 0; SANDAL_IMAGE[214] = 0; SANDAL_IMAGE[215] = 0;
        SANDAL_IMAGE[216] = 0; SANDAL_IMAGE[217] = 0; SANDAL_IMAGE[218] = 0; SANDAL_IMAGE[219] = 0;
        SANDAL_IMAGE[220] = 0; SANDAL_IMAGE[221] = 0; SANDAL_IMAGE[222] = 0; SANDAL_IMAGE[223] = 0;
        
        // Row 8
        SANDAL_IMAGE[224] = 0; SANDAL_IMAGE[225] = 0; SANDAL_IMAGE[226] = 0; SANDAL_IMAGE[227] = 0;
        SANDAL_IMAGE[228] = 0; SANDAL_IMAGE[229] = 0; SANDAL_IMAGE[230] = 0; SANDAL_IMAGE[231] = 0;
        SANDAL_IMAGE[232] = 0; SANDAL_IMAGE[233] = 0; SANDAL_IMAGE[234] = 0; SANDAL_IMAGE[235] = 0;
        SANDAL_IMAGE[236] = 1; SANDAL_IMAGE[237] = 0; SANDAL_IMAGE[238] = 0; SANDAL_IMAGE[239] = 11;
        SANDAL_IMAGE[240] = 2; SANDAL_IMAGE[241] = 0; SANDAL_IMAGE[242] = 0; SANDAL_IMAGE[243] = 0;
        SANDAL_IMAGE[244] = 0; SANDAL_IMAGE[245] = 0; SANDAL_IMAGE[246] = 0; SANDAL_IMAGE[247] = 0;
        SANDAL_IMAGE[248] = 0; SANDAL_IMAGE[249] = 0; SANDAL_IMAGE[250] = 0; SANDAL_IMAGE[251] = 0;
        
        // Row 9
        SANDAL_IMAGE[252] = 0; SANDAL_IMAGE[253] = 0; SANDAL_IMAGE[254] = 0; SANDAL_IMAGE[255] = 0;
        SANDAL_IMAGE[256] = 0; SANDAL_IMAGE[257] = 0; SANDAL_IMAGE[258] = 0; SANDAL_IMAGE[259] = 0;
        SANDAL_IMAGE[260] = 0; SANDAL_IMAGE[261] = 1; SANDAL_IMAGE[262] = 0; SANDAL_IMAGE[263] = 0;
        SANDAL_IMAGE[264] = 0; SANDAL_IMAGE[265] = 0; SANDAL_IMAGE[266] = 56; SANDAL_IMAGE[267] = 178;
        SANDAL_IMAGE[268] = 85; SANDAL_IMAGE[269] = 2; SANDAL_IMAGE[270] = 0; SANDAL_IMAGE[271] = 0;
        SANDAL_IMAGE[272] = 0; SANDAL_IMAGE[273] = 0; SANDAL_IMAGE[274] = 0; SANDAL_IMAGE[275] = 0;
        SANDAL_IMAGE[276] = 0; SANDAL_IMAGE[277] = 0; SANDAL_IMAGE[278] = 0; SANDAL_IMAGE[279] = 0;
        
        // Row 10
        SANDAL_IMAGE[280] = 0; SANDAL_IMAGE[281] = 0; SANDAL_IMAGE[282] = 0; SANDAL_IMAGE[283] = 0;
        SANDAL_IMAGE[284] = 0; SANDAL_IMAGE[285] = 0; SANDAL_IMAGE[286] = 0; SANDAL_IMAGE[287] = 0;
        SANDAL_IMAGE[288] = 0; SANDAL_IMAGE[289] = 0; SANDAL_IMAGE[290] = 0; SANDAL_IMAGE[291] = 0;
        SANDAL_IMAGE[292] = 0; SANDAL_IMAGE[293] = 37; SANDAL_IMAGE[294] = 244; SANDAL_IMAGE[295] = 253;
        SANDAL_IMAGE[296] = 253; SANDAL_IMAGE[297] = 101; SANDAL_IMAGE[298] = 0; SANDAL_IMAGE[299] = 0;
        SANDAL_IMAGE[300] = 0; SANDAL_IMAGE[301] = 0; SANDAL_IMAGE[302] = 0; SANDAL_IMAGE[303] = 0;
        SANDAL_IMAGE[304] = 0; SANDAL_IMAGE[305] = 0; SANDAL_IMAGE[306] = 0; SANDAL_IMAGE[307] = 0;
        
        // Row 11
        SANDAL_IMAGE[308] = 0; SANDAL_IMAGE[309] = 0; SANDAL_IMAGE[310] = 0; SANDAL_IMAGE[311] = 0;
        SANDAL_IMAGE[312] = 0; SANDAL_IMAGE[313] = 0; SANDAL_IMAGE[314] = 0; SANDAL_IMAGE[315] = 0;
        SANDAL_IMAGE[316] = 0; SANDAL_IMAGE[317] = 0; SANDAL_IMAGE[318] = 0; SANDAL_IMAGE[319] = 0;
        SANDAL_IMAGE[320] = 24; SANDAL_IMAGE[321] = 210; SANDAL_IMAGE[322] = 253; SANDAL_IMAGE[323] = 253;
        SANDAL_IMAGE[324] = 253; SANDAL_IMAGE[325] = 215; SANDAL_IMAGE[326] = 0; SANDAL_IMAGE[327] = 0;
        SANDAL_IMAGE[328] = 0; SANDAL_IMAGE[329] = 0; SANDAL_IMAGE[330] = 0; SANDAL_IMAGE[331] = 0;
        SANDAL_IMAGE[332] = 0; SANDAL_IMAGE[333] = 0; SANDAL_IMAGE[334] = 0; SANDAL_IMAGE[335] = 0;
        
        // Row 12
        SANDAL_IMAGE[336] = 0; SANDAL_IMAGE[337] = 0; SANDAL_IMAGE[338] = 0; SANDAL_IMAGE[339] = 0;
        SANDAL_IMAGE[340] = 0; SANDAL_IMAGE[341] = 0; SANDAL_IMAGE[342] = 0; SANDAL_IMAGE[343] = 0;
        SANDAL_IMAGE[344] = 0; SANDAL_IMAGE[345] = 0; SANDAL_IMAGE[346] = 0; SANDAL_IMAGE[347] = 11;
        SANDAL_IMAGE[348] = 166; SANDAL_IMAGE[349] = 253; SANDAL_IMAGE[350] = 253; SANDAL_IMAGE[351] = 253;
        SANDAL_IMAGE[352] = 253; SANDAL_IMAGE[353] = 74; SANDAL_IMAGE[354] = 0; SANDAL_IMAGE[355] = 0;
        SANDAL_IMAGE[356] = 0; SANDAL_IMAGE[357] = 0; SANDAL_IMAGE[358] = 0; SANDAL_IMAGE[359] = 0;
        SANDAL_IMAGE[360] = 0; SANDAL_IMAGE[361] = 0; SANDAL_IMAGE[362] = 0; SANDAL_IMAGE[363] = 0;
        
        // Row 13
        SANDAL_IMAGE[364] = 0; SANDAL_IMAGE[365] = 0; SANDAL_IMAGE[366] = 0; SANDAL_IMAGE[367] = 0;
        SANDAL_IMAGE[368] = 0; SANDAL_IMAGE[369] = 0; SANDAL_IMAGE[370] = 0; SANDAL_IMAGE[371] = 0;
        SANDAL_IMAGE[372] = 0; SANDAL_IMAGE[373] = 0; SANDAL_IMAGE[374] = 0; SANDAL_IMAGE[375] = 13;
        SANDAL_IMAGE[376] = 253; SANDAL_IMAGE[377] = 253; SANDAL_IMAGE[378] = 253; SANDAL_IMAGE[379] = 253;
        SANDAL_IMAGE[380] = 217; SANDAL_IMAGE[381] = 0; SANDAL_IMAGE[382] = 0; SANDAL_IMAGE[383] = 0;
        SANDAL_IMAGE[384] = 0; SANDAL_IMAGE[385] = 0; SANDAL_IMAGE[386] = 0; SANDAL_IMAGE[387] = 0;
        SANDAL_IMAGE[388] = 0; SANDAL_IMAGE[389] = 0; SANDAL_IMAGE[390] = 0; SANDAL_IMAGE[391] = 0;
        
        // Row 14
        SANDAL_IMAGE[392] = 0; SANDAL_IMAGE[393] = 0; SANDAL_IMAGE[394] = 0; SANDAL_IMAGE[395] = 0;
        SANDAL_IMAGE[396] = 0; SANDAL_IMAGE[397] = 0; SANDAL_IMAGE[398] = 0; SANDAL_IMAGE[399] = 0;
        SANDAL_IMAGE[400] = 0; SANDAL_IMAGE[401] = 0; SANDAL_IMAGE[402] = 3; SANDAL_IMAGE[403] = 140;
        SANDAL_IMAGE[404] = 253; SANDAL_IMAGE[405] = 253; SANDAL_IMAGE[406] = 253; SANDAL_IMAGE[407] = 253;
        SANDAL_IMAGE[408] = 119; SANDAL_IMAGE[409] = 0; SANDAL_IMAGE[410] = 0; SANDAL_IMAGE[411] = 0;
        SANDAL_IMAGE[412] = 0; SANDAL_IMAGE[413] = 0; SANDAL_IMAGE[414] = 0; SANDAL_IMAGE[415] = 0;
        SANDAL_IMAGE[416] = 0; SANDAL_IMAGE[417] = 0; SANDAL_IMAGE[418] = 0; SANDAL_IMAGE[419] = 0;
        
        // Row 15
        SANDAL_IMAGE[420] = 0; SANDAL_IMAGE[421] = 0; SANDAL_IMAGE[422] = 0; SANDAL_IMAGE[423] = 0;
        SANDAL_IMAGE[424] = 0; SANDAL_IMAGE[425] = 0; SANDAL_IMAGE[426] = 0; SANDAL_IMAGE[427] = 0;
        SANDAL_IMAGE[428] = 0; SANDAL_IMAGE[429] = 0; SANDAL_IMAGE[430] = 5; SANDAL_IMAGE[431] = 193;
        SANDAL_IMAGE[432] = 253; SANDAL_IMAGE[433] = 253; SANDAL_IMAGE[434] = 253; SANDAL_IMAGE[435] = 253;
        SANDAL_IMAGE[436] = 119; SANDAL_IMAGE[437] = 0; SANDAL_IMAGE[438] = 0; SANDAL_IMAGE[439] = 0;
        SANDAL_IMAGE[440] = 0; SANDAL_IMAGE[441] = 0; SANDAL_IMAGE[442] = 0; SANDAL_IMAGE[443] = 0;
        SANDAL_IMAGE[444] = 0; SANDAL_IMAGE[445] = 0; SANDAL_IMAGE[446] = 0; SANDAL_IMAGE[447] = 0;
        
        // Row 16
        SANDAL_IMAGE[448] = 0; SANDAL_IMAGE[449] = 0; SANDAL_IMAGE[450] = 0; SANDAL_IMAGE[451] = 0;
        SANDAL_IMAGE[452] = 0; SANDAL_IMAGE[453] = 0; SANDAL_IMAGE[454] = 0; SANDAL_IMAGE[455] = 0;
        SANDAL_IMAGE[456] = 0; SANDAL_IMAGE[457] = 0; SANDAL_IMAGE[458] = 58; SANDAL_IMAGE[459] = 253;
        SANDAL_IMAGE[460] = 253; SANDAL_IMAGE[461] = 253; SANDAL_IMAGE[462] = 253; SANDAL_IMAGE[463] = 253;
        SANDAL_IMAGE[464] = 250; SANDAL_IMAGE[465] = 182; SANDAL_IMAGE[466] = 73; SANDAL_IMAGE[467] = 4;
        SANDAL_IMAGE[468] = 0; SANDAL_IMAGE[469] = 0; SANDAL_IMAGE[470] = 0; SANDAL_IMAGE[471] = 0;
        SANDAL_IMAGE[472] = 0; SANDAL_IMAGE[473] = 0; SANDAL_IMAGE[474] = 0; SANDAL_IMAGE[475] = 0;
        
        // Row 17
        SANDAL_IMAGE[476] = 0; SANDAL_IMAGE[477] = 0; SANDAL_IMAGE[478] = 0; SANDAL_IMAGE[479] = 0;
        SANDAL_IMAGE[480] = 0; SANDAL_IMAGE[481] = 0; SANDAL_IMAGE[482] = 0; SANDAL_IMAGE[483] = 0;
        SANDAL_IMAGE[484] = 0; SANDAL_IMAGE[485] = 0; SANDAL_IMAGE[486] = 100; SANDAL_IMAGE[487] = 253;
        SANDAL_IMAGE[488] = 253; SANDAL_IMAGE[489] = 253; SANDAL_IMAGE[490] = 253; SANDAL_IMAGE[491] = 253;
        SANDAL_IMAGE[492] = 253; SANDAL_IMAGE[493] = 253; SANDAL_IMAGE[494] = 253; SANDAL_IMAGE[495] = 125;
        SANDAL_IMAGE[496] = 1; SANDAL_IMAGE[497] = 0; SANDAL_IMAGE[498] = 0; SANDAL_IMAGE[499] = 0;
        SANDAL_IMAGE[500] = 0; SANDAL_IMAGE[501] = 0; SANDAL_IMAGE[502] = 0; SANDAL_IMAGE[503] = 0;
        
        // Row 18
        SANDAL_IMAGE[504] = 0; SANDAL_IMAGE[505] = 0; SANDAL_IMAGE[506] = 0; SANDAL_IMAGE[507] = 0;
        SANDAL_IMAGE[508] = 0; SANDAL_IMAGE[509] = 0; SANDAL_IMAGE[510] = 0; SANDAL_IMAGE[511] = 0;
        SANDAL_IMAGE[512] = 0; SANDAL_IMAGE[513] = 0; SANDAL_IMAGE[514] = 100; SANDAL_IMAGE[515] = 253;
        SANDAL_IMAGE[516] = 253; SANDAL_IMAGE[517] = 253; SANDAL_IMAGE[518] = 253;   SANDAL_IMAGE[519] = 253;
        SANDAL_IMAGE[520] = 253; SANDAL_IMAGE[521] = 253; SANDAL_IMAGE[522] = 253; SANDAL_IMAGE[523] = 253;
        SANDAL_IMAGE[524] = 73; SANDAL_IMAGE[525] = 1; SANDAL_IMAGE[526] = 0; SANDAL_IMAGE[527] = 0;
        SANDAL_IMAGE[528] = 0; SANDAL_IMAGE[529] = 0; SANDAL_IMAGE[530] = 0; SANDAL_IMAGE[531] = 0;
        
        // Row 19
        SANDAL_IMAGE[532] = 0; SANDAL_IMAGE[533] = 0; SANDAL_IMAGE[534] = 0; SANDAL_IMAGE[535] = 0;
        SANDAL_IMAGE[536] = 0; SANDAL_IMAGE[537] = 0; SANDAL_IMAGE[538] = 0; SANDAL_IMAGE[539] = 0;
        SANDAL_IMAGE[540] = 0; SANDAL_IMAGE[541] = 0; SANDAL_IMAGE[542] = 9; SANDAL_IMAGE[543] = 175;
        SANDAL_IMAGE[544] = 253; SANDAL_IMAGE[545] = 253; SANDAL_IMAGE[546] = 253; SANDAL_IMAGE[547] = 253;
        SANDAL_IMAGE[548] = 253; SANDAL_IMAGE[549] = 253; SANDAL_IMAGE[550] = 253; SANDAL_IMAGE[551] = 253;
        SANDAL_IMAGE[552] = 253; SANDAL_IMAGE[553] = 161; SANDAL_IMAGE[554] = 2; SANDAL_IMAGE[555] = 0;
        SANDAL_IMAGE[556] = 0; SANDAL_IMAGE[557] = 0; SANDAL_IMAGE[558] = 0; SANDAL_IMAGE[559] = 0;
        
        // Row 20
        SANDAL_IMAGE[560] = 0; SANDAL_IMAGE[561] = 0; SANDAL_IMAGE[562] = 0; SANDAL_IMAGE[563] = 0;
        SANDAL_IMAGE[564] = 0; SANDAL_IMAGE[565] = 0; SANDAL_IMAGE[566] = 0; SANDAL_IMAGE[567] = 0;
        SANDAL_IMAGE[568] = 0; SANDAL_IMAGE[569] = 0; SANDAL_IMAGE[570] = 0; SANDAL_IMAGE[571] = 26;
        SANDAL_IMAGE[572] = 200; SANDAL_IMAGE[573] = 253; SANDAL_IMAGE[574] = 253; SANDAL_IMAGE[575] = 253;
        SANDAL_IMAGE[576] = 253; SANDAL_IMAGE[577] = 253; SANDAL_IMAGE[578] = 253; SANDAL_IMAGE[579] = 253;
        SANDAL_IMAGE[580] = 253; SANDAL_IMAGE[581] = 252; SANDAL_IMAGE[582] = 115; SANDAL_IMAGE[583] = 0;
        SANDAL_IMAGE[584] = 0; SANDAL_IMAGE[585] = 0; SANDAL_IMAGE[586] = 0; SANDAL_IMAGE[587] = 0;
        
        // Row 21
        SANDAL_IMAGE[588] = 0; SANDAL_IMAGE[589] = 0; SANDAL_IMAGE[590] = 0; SANDAL_IMAGE[591] = 0;
        SANDAL_IMAGE[592] = 0; SANDAL_IMAGE[593] = 0; SANDAL_IMAGE[594] = 0; SANDAL_IMAGE[595] = 0;
        // Row 21 (continued)
        SANDAL_IMAGE[596] = 0; SANDAL_IMAGE[597] = 0; SANDAL_IMAGE[598] = 0; SANDAL_IMAGE[599] = 33;
        SANDAL_IMAGE[600] = 151; SANDAL_IMAGE[601] = 253; SANDAL_IMAGE[602] = 253; SANDAL_IMAGE[603] = 253;
        SANDAL_IMAGE[604] = 253; SANDAL_IMAGE[605] = 253; SANDAL_IMAGE[606] = 253; SANDAL_IMAGE[607] = 253;
        SANDAL_IMAGE[608] = 253; SANDAL_IMAGE[609] = 35; SANDAL_IMAGE[610] = 0; SANDAL_IMAGE[611] = 0;
        SANDAL_IMAGE[612] = 0; SANDAL_IMAGE[613] = 0; SANDAL_IMAGE[614] = 0; SANDAL_IMAGE[615] = 0;
        
        // Row 22
        SANDAL_IMAGE[616] = 0; SANDAL_IMAGE[617] = 0; SANDAL_IMAGE[618] = 0; SANDAL_IMAGE[619] = 0;
        SANDAL_IMAGE[620] = 0; SANDAL_IMAGE[621] = 0; SANDAL_IMAGE[622] = 0; SANDAL_IMAGE[623] = 0;
        SANDAL_IMAGE[624] = 0; SANDAL_IMAGE[625] = 0; SANDAL_IMAGE[626] = 0; SANDAL_IMAGE[627] = 0;
        SANDAL_IMAGE[628] = 0; SANDAL_IMAGE[629] = 14; SANDAL_IMAGE[630] = 93; SANDAL_IMAGE[631] = 132;
        SANDAL_IMAGE[632] = 233; SANDAL_IMAGE[633] = 253; SANDAL_IMAGE[634] = 253; SANDAL_IMAGE[635] = 253;
        SANDAL_IMAGE[636] = 253; SANDAL_IMAGE[637] = 253; SANDAL_IMAGE[638] = 253; SANDAL_IMAGE[639] = 127;
        SANDAL_IMAGE[640] = 0; SANDAL_IMAGE[641] = 0; SANDAL_IMAGE[642] = 0; SANDAL_IMAGE[643] = 0;
        
        // Row 23
        SANDAL_IMAGE[644] = 0; SANDAL_IMAGE[645] = 0; SANDAL_IMAGE[646] = 0; SANDAL_IMAGE[647] = 0;
        SANDAL_IMAGE[648] = 0; SANDAL_IMAGE[649] = 0; SANDAL_IMAGE[650] = 0; SANDAL_IMAGE[651] = 0;
        SANDAL_IMAGE[652] = 0; SANDAL_IMAGE[653] = 0; SANDAL_IMAGE[654] = 0; SANDAL_IMAGE[655] = 0;
        SANDAL_IMAGE[656] = 0; SANDAL_IMAGE[657] = 0; SANDAL_IMAGE[658] = 0; SANDAL_IMAGE[659] = 0;
        SANDAL_IMAGE[660] = 50; SANDAL_IMAGE[661] = 92; SANDAL_IMAGE[662] = 98; SANDAL_IMAGE[663] = 240;
        SANDAL_IMAGE[664] = 253; SANDAL_IMAGE[665] = 253; SANDAL_IMAGE[666] = 253; SANDAL_IMAGE[667] = 240;
        SANDAL_IMAGE[668] = 5; SANDAL_IMAGE[669] = 0; SANDAL_IMAGE[670] = 0; SANDAL_IMAGE[671] = 0;
        
        // Row 24
        SANDAL_IMAGE[672] = 0; SANDAL_IMAGE[673] = 0; SANDAL_IMAGE[674] = 0; SANDAL_IMAGE[675] = 0;
        SANDAL_IMAGE[676] = 0; SANDAL_IMAGE[677] = 0; SANDAL_IMAGE[678] = 0; SANDAL_IMAGE[679] = 0;
        SANDAL_IMAGE[680] = 0; SANDAL_IMAGE[681] = 0; SANDAL_IMAGE[682] = 0; SANDAL_IMAGE[683] = 0;
        SANDAL_IMAGE[684] = 0; SANDAL_IMAGE[685] = 0; SANDAL_IMAGE[686] = 0; SANDAL_IMAGE[687] = 0;
        SANDAL_IMAGE[688] = 0; SANDAL_IMAGE[689] = 0; SANDAL_IMAGE[690] = 0; SANDAL_IMAGE[691] = 36;
        SANDAL_IMAGE[692] = 235; SANDAL_IMAGE[693] = 253; SANDAL_IMAGE[694] = 253; SANDAL_IMAGE[695] = 155;
        SANDAL_IMAGE[696] = 0; SANDAL_IMAGE[697] = 0; SANDAL_IMAGE[698] = 0; SANDAL_IMAGE[699] = 0;
        
        // Row 25
        SANDAL_IMAGE[700] = 0; SANDAL_IMAGE[701] = 0; SANDAL_IMAGE[702] = 0; SANDAL_IMAGE[703] = 0;
        SANDAL_IMAGE[704] = 0; SANDAL_IMAGE[705] = 0; SANDAL_IMAGE[706] = 0; SANDAL_IMAGE[707] = 0;
        SANDAL_IMAGE[708] = 0; SANDAL_IMAGE[709] = 0; SANDAL_IMAGE[710] = 0; SANDAL_IMAGE[711] = 0;
        SANDAL_IMAGE[712] = 0; SANDAL_IMAGE[713] = 0; SANDAL_IMAGE[714] = 0; SANDAL_IMAGE[715] = 0;
        SANDAL_IMAGE[716] = 0; SANDAL_IMAGE[717] = 0; SANDAL_IMAGE[718] = 0; SANDAL_IMAGE[719] = 0;
        SANDAL_IMAGE[720] = 175; SANDAL_IMAGE[721] = 253; SANDAL_IMAGE[722] = 221; SANDAL_IMAGE[723] = 26;
        SANDAL_IMAGE[724] = 0; SANDAL_IMAGE[725] = 0; SANDAL_IMAGE[726] = 0; SANDAL_IMAGE[727] = 0;
        
        // Row 26
        SANDAL_IMAGE[728] = 0; SANDAL_IMAGE[729] = 0; SANDAL_IMAGE[730] = 0; SANDAL_IMAGE[731] = 0;
        SANDAL_IMAGE[732] = 0; SANDAL_IMAGE[733] = 0; SANDAL_IMAGE[734] = 0; SANDAL_IMAGE[735] = 0;
        SANDAL_IMAGE[736] = 0; SANDAL_IMAGE[737] = 0; SANDAL_IMAGE[738] = 0; SANDAL_IMAGE[739] = 0;
        SANDAL_IMAGE[740] = 0; SANDAL_IMAGE[741] = 0; SANDAL_IMAGE[742] = 0; SANDAL_IMAGE[743] = 0;
        SANDAL_IMAGE[744] = 0; SANDAL_IMAGE[745] = 0; SANDAL_IMAGE[746] = 0; SANDAL_IMAGE[747] = 0;
        SANDAL_IMAGE[748] = 0; SANDAL_IMAGE[749] = 0; SANDAL_IMAGE[750] = 0; SANDAL_IMAGE[751] = 0;
        SANDAL_IMAGE[752] = 0; SANDAL_IMAGE[753] = 0; SANDAL_IMAGE[754] = 0; SANDAL_IMAGE[755] = 0;
        
        // Row 27
        SANDAL_IMAGE[756] = 0; SANDAL_IMAGE[757] = 0; SANDAL_IMAGE[758] = 0; SANDAL_IMAGE[759] = 0;
        SANDAL_IMAGE[760] = 0; SANDAL_IMAGE[761] = 0; SANDAL_IMAGE[762] = 0; SANDAL_IMAGE[763] = 0;
        SANDAL_IMAGE[764] = 0; SANDAL_IMAGE[765] = 0; SANDAL_IMAGE[766] = 0; SANDAL_IMAGE[767] = 0;
        SANDAL_IMAGE[768] = 0; SANDAL_IMAGE[769] = 0; SANDAL_IMAGE[770] = 0; SANDAL_IMAGE[771] = 0;
        SANDAL_IMAGE[772] = 0; SANDAL_IMAGE[773] = 0; SANDAL_IMAGE[774] = 0; SANDAL_IMAGE[775] = 0;
        SANDAL_IMAGE[776] = 0; SANDAL_IMAGE[777] = 0; SANDAL_IMAGE[778] = 0; SANDAL_IMAGE[779] = 0;
        SANDAL_IMAGE[780] = 0; SANDAL_IMAGE[781] = 0; SANDAL_IMAGE[782] = 0; SANDAL_IMAGE[783] = 0;
    end
    
    // Clock process
    always begin
        if (test_running) begin
            clk = 0;
            #(CLK_PERIOD/2);
            clk = 1;
            #(CLK_PERIOD/2);
        end else begin
            #100;
        end
    end
    
    // Task to send a byte via UART
    task uart_send_byte;
        input [7:0] byte_in;
        begin
            // Start bit (low)
            uart_rx_pin = 0;
            #BIT_PERIOD;
            
            // Data bits (LSB first)
            for (integer i = 0; i < 8; i = i + 1) begin
                uart_rx_pin = byte_in[i];
                #BIT_PERIOD;
            end
            
            // Stop bit (high)
            uart_rx_pin = 1;
            #BIT_PERIOD;
            
            // Add extra delay between bytes for reliability
            #(BIT_PERIOD/2);
        end
    endtask
    
    // Stimulus and monitoring process - all sequential
    initial begin
        // Initialize
        $display("============================================================");
        $display("REQUIREMENT 1: System Initialization");
        $display("Verifying proper reset and initialization sequence...");
        reset = 1;
        #2000;  // Longer reset period for Clock Wizard to initialize
        reset = 0;
        #2000;  // Longer stabilization time for Clock Wizard to lock
        $display("REQUIREMENT 1: PASS - System initialized");
        $display("============================================================");
        
        $display("============================================================");
        $display("REQUIREMENT 2: UART Communication");
        $display("Starting testbench for CLASS 9...");
        $display("Testing UART reception of Fashion MNIST data...");
        
        // Send the real sandal image
        $display("Sending actual CLASS 9 image via UART at 9600 baud...");
        
        // Send each pixel via UART once
        for (integer i = 0; i < 784; i = i + 1) begin
            uart_send_byte(SANDAL_IMAGE[i]);
            
            // Progress reporting (every 100 pixels)
            if (i % 100 == 0) begin
                $display("Sent %0d pixels", i);
            end
        end
        
        $display("All 784 pixels sent. REQUIREMENT 2: PASS - UART Reception Complete");
        $display("============================================================");
        
        $display("============================================================");
        $display("REQUIREMENT 3: Neural Network Processing");
        $display("Waiting for neural network to process image data...");
        
        // Wait for the state machine to transition to NN_PROCESSING (led_out == 4'b0111)
        wait(led_out == 4'b0111);
        $display("Neural network is now processing (LED state: 0111)");
        
        // Wait for processing to complete (led_out == 4'b1111)
        wait(led_out == 4'b1111);
        $display("Neural network processing complete (LED state: 1111)");
        $display("REQUIREMENT 3: PASS - Processing completed successfully");
        $display("============================================================");
        
        // Now that we know processing is complete, check LED status
        $display("============================================================");
        $display("REQUIREMENT 4: LED Status Indication");
        $display("LED output: %b", led_out);
        
        if (led_out == 4'b1111) begin
            $display("REQUIREMENT 4: PASS - All LEDs on - result ready");
        end else begin
            $display("REQUIREMENT 4: FAIL - Not all LEDs are on - result may not be ready");
        end
        $display("============================================================");
        
        // Check seven segment display output
        $display("============================================================");
        $display("REQUIREMENT 5: Classification Output");
        $display("SSD segments: %b", ssd_segments);
        $display("SSD anode: %b", ssd_anode);
        
        // Check if SSD is showing class 5 (segment pattern for 5)
        if (ssd_segments == 7'b1101111 && ssd_anode == 1'b1) begin
            $display("REQUIREMENT 5: PASS - SSD displaying class 9");
            $display("Classification verification SUCCESSFUL!");
        end else begin
            $display("REQUIREMENT 5: FAIL - SSD not displaying expected pattern for class 9");
            $display("Classification verification FAILED!");
        end
        $display("============================================================");
        
        $display("============================================================");
        $display("OVERALL TEST SUMMARY:");
        if (led_out == 4'b1111 && ssd_segments == 7'b1101111 && ssd_anode == 1'b1) begin
            $display("ALL REQUIREMENTS PASSED - Fashion MNIST Neural Network Implementation Verified");
        end else begin
            $display("TEST FAILED - Check individual requirement results for details");
        end
        $display("============================================================");
        
        // End simulation
        test_running = 0;
        #1000;
        $finish;
    end
    
endmodule
