`default_nettype none

module glyphs_rom(
    input  wire [5:0] c, input  wire [3:0] y, input  wire [2:0] x, output reg pixel
);
    reg [7:0] rb; 

    always @(*) begin
        case (c) 
            0:  case(y) 2,3:rb=8'hFF; 4:rb=8'h1F; 5:rb=8'h1E; 6:rb=8'h18; 7:rb=8'h38; 8:rb=8'h30; 9:rb=8'hF0; 10:rb=8'h60; default:rb=0; endcase // ア
            1:  case(y) 1:rb=8'h02; 2:rb=8'h07; 3:rb=8'h0E; 4:rb=8'h3C; 5:rb=8'hFC; 6:rb=8'hDC; 7,8,9:rb=8'h1C; default:rb=0; endcase // イ
            2:  case(y) 1,2:rb=8'h18; 3,4:rb=8'hFF; 5:rb=8'hC3; 6:rb=8'hC7; 7:rb=8'h06; 8:rb=8'h1E; 9:rb=8'h3C; 10:rb=8'h30; default:rb=0; endcase // ウ
            3:  case(y) 1,2,7,8:rb=8'hFF; 3,4,5,6:rb=8'h18; default:rb=0; endcase // エ
            4:  case(y) 1,2:rb=8'h0C; 3,4:rb=8'hFF; 5,10:rb=8'h1C; 6:rb=8'h3C; 7:rb=8'hEC; 8:rb=8'hCC; 9:rb=8'h9C; default:rb=0; endcase // オ
            5:  case(y) 1:rb=8'h18; 2:rb=8'h38; 3,4:rb=8'hFF; 5,6:rb=8'h33; 7:rb=8'h73; 8:rb=8'h67; 9:rb=8'hEE; 10:rb=8'hCE; default:rb=0; endcase // カ
            6:  case(y) 1:rb=8'h30; 2:rb=8'h3E; 3:rb=8'hFE; 4,7:rb=8'hF8; 5:rb=8'h1F; 6:rb=8'hFF; 8:rb=8'h1C; 9:rb=8'h0C; default:rb=0; endcase // キ
            7:  case(y) 2:rb=8'h18; 3:rb=8'h3E; 4:rb=8'h7F; 5:rb=8'h67; 6:rb=8'hC6; 7:rb=8'h86; 8:rb=8'h0C; 9:rb=8'h3C; 10:rb=8'h78; 11:rb=8'h60; default:rb=0; endcase // ク
            8:  case(y) 1,10:rb=8'h30; 2:rb=8'h70; 3:rb=8'h7F; 4:rb=8'hFF; 5:rb=8'hCC; 6:rb=8'h8C; 7:rb=8'h1C; 8:rb=8'h38; 9:rb=8'h78; default:rb=0; endcase // ケ
            9:  case(y) 1,2,7,8:rb=8'hFF; 3,4,5,6,9:rb=8'h03; default:rb=0; endcase // コ
            10:  case(y) 1,2,5,6:rb=8'h66; 3,4:rb=8'hFF; 7:rb=8'h6E; 8:rb=8'h0C; 9:rb=8'h3C; 10:rb=8'h18; default:rb=0; endcase // サ
            11:  case(y) 1:rb=8'h20; 2:rb=8'h70; 3:rb=8'h91; 4:rb=8'hE3; 5:rb=8'h67; 6:rb=8'h0E; 7:rb=8'h3C; 8:rb=8'hF8; 9:rb=8'h40; default:rb=0; endcase // シ
            12:  case(y) 2:rb=8'hFF; 3:rb=8'h7E; 4:rb=8'h0E; 5:rb=8'h0C; 6:rb=8'h1C; 7:rb=8'h3E; 8:rb=8'hF7; 9:rb=8'hE3; 10:rb=8'hC2; default:rb=0; endcase // ス
            13:  case(y) 1:rb=8'h20; 2,8:rb=8'h70; 3:rb=8'h7F; 4:rb=8'hFF; 5:rb=8'hF7; 6:rb=8'h76; 7:rb=8'h74; 9:rb=8'h3F; 10:rb=8'h1E; default:rb=0; endcase // セ
            14:  case(y) 1:rb=8'hC3; 2:rb=8'hE3; 3:rb=8'h67; 4:rb=8'h66; 5:rb=8'h0E; 6:rb=8'h1C; 7:rb=8'h38; 8:rb=8'h30; default:rb=0; endcase // ソ
            15:  case(y) 2:rb=8'h18; 3,9:rb=8'h3E; 4:rb=8'h7F; 5:rb=8'h67; 6:rb=8'hF6; 7:rb=8'hBE; 8:rb=8'h1E; 10:rb=8'h70; 11:rb=8'h60; default:rb=0; endcase // タ
            16:  case(y) 1:rb=8'h06; 2:rb=8'hFE; 3:rb=8'h78; 4,7:rb=8'h18; 5,6:rb=8'hFF; 8:rb=8'h38; 9:rb=8'h70; 10:rb=8'h60; default:rb=0; endcase // チ
            17:  case(y) 1:rb=8'h31; 2:rb=8'hFB; 3:rb=8'hDB; 4:rb=8'hC3; 5:rb=8'h06; 6:rb=8'h0E; 7:rb=8'h3C; 8:rb=8'h78; 9:rb=8'h20; default:rb=0; endcase // ツ
            18:  case(y) 1,2:rb=8'h7E; 4,5:rb=8'hFF; 6,7:rb=8'h18; 8:rb=8'h38; 9:rb=8'h70; 10:rb=8'h60; default:rb=0; endcase // テ
            19:  case(y) 1,2,3,7,8,9:rb=8'h30; 4:rb=8'h3E; 5:rb=8'h3F; 6:rb=8'h32; default:rb=0; endcase // ト
            20:  case(y) 1,2,3,6,7:rb=8'h18; 4,5:rb=8'hFF; 8:rb=8'h38; 9:rb=8'h70; 10:rb=8'h60; default:rb=0; endcase // ナ
            21:  case(y) 2:rb=8'hFE; 3:rb=8'h7E; 7,8:rb=8'hFF; default:rb=0; endcase // ニ
            22:  case(y) 2:rb=8'hFF; 3,8:rb=8'h7F; 4:rb=8'h26; 5:rb=8'h7E; 6:rb=8'h3C; 7:rb=8'h1E; 9:rb=8'hF2; 10:rb=8'hE0; default:rb=0; endcase // ヌ
            23:  case(y) 1,9,10:rb=8'h18; 2:rb=8'hFE; 3,7:rb=8'hFF; 4:rb=8'h0E; 5:rb=8'h1C; 6:rb=8'h7B; 8:rb=8'hD9; default:rb=0; endcase // ネ
            24:  case(y) 1,2,3:rb=8'h06; 4:rb=8'h0C; 5:rb=8'h1C; 6:rb=8'h38; 7:rb=8'hF0; 8:rb=8'hE0; default:rb=0; endcase // ノ
            25:  case(y) 1:rb=8'h04; 2:rb=8'h7E; 3:rb=8'h76; 4:rb=8'h67; 5:rb=8'h63; 6:rb=8'hE3; 7,8:rb=8'hC3; default:rb=0; endcase // ハ
            26:  case(y) 1,2,6,7,8:rb=8'h60; 3:rb=8'h66; 4,9:rb=8'h7F; 5:rb=8'h7C; 10:rb=8'h3F; default:rb=0; endcase // ヒ
            27:  case(y) 2,3:rb=8'hFF; 4:rb=8'h07; 5,6:rb=8'h06; 7:rb=8'h0E; 8:rb=8'h3C; 9:rb=8'h78; 10:rb=8'h20; default:rb=0; endcase // フ
            28:  case(y) 2:rb=8'h30; 3:rb=8'h78; 4:rb=8'hEC; 5:rb=8'hCE; 6:rb=8'hC7; 7:rb=8'h03; 8:rb=8'h01; default:rb=0; endcase // ヘ
            29:  case(y) 1,2:rb=8'h18; 3,4:rb=8'hFF; 5:rb=8'h5A; 6:rb=8'hFB; 7:rb=8'hDB; 8:rb=8'h99; 9:rb=8'h38; 10:rb=8'h30; default:rb=0; endcase // ホ
            30:  case(y) 1,2:rb=8'hFF; 3:rb=8'h07; 4:rb=8'h26; 5:rb=8'h7E; 6:rb=8'h3C; 7:rb=8'h1C; 8,9:rb=8'h0C; default:rb=0; endcase // マ
            31:  case(y) 1,4:rb=8'h7C; 2,5,8:rb=8'h7E; 3,9:rb=8'h06; 6:rb=8'h44; 7:rb=8'hFC; default:rb=0; endcase // ミ
            32:  case(y) 1:rb=8'h10; 2:rb=8'h38; 3,4:rb=8'h30; 5:rb=8'h76; 6:rb=8'h66; 7:rb=8'h67; 8,9:rb=8'hFF; default:rb=0; endcase // ム
            33:  case(y) 1,2:rb=8'h06; 3:rb=8'h76; 4:rb=8'h3C; 5:rb=8'h1C; 6:rb=8'h3F; 7:rb=8'h77; 8:rb=8'hE3; 9:rb=8'h40; default:rb=0; endcase // メ
            34:  case(y) 2,5,6:rb=8'hFF; 3:rb=8'h7E; 4,7,8:rb=8'h38; 9,10:rb=8'h1F; default:rb=0; endcase // モ
            35:  case(y) 2:rb=8'h60; 3:rb=8'h6F; 4:rb=8'hFF; 5:rb=8'hF7; 6:rb=8'h36; 7:rb=8'h34; 8:rb=8'h38; 9,10:rb=8'h18; default:rb=0; endcase // ヤ
            36:  case(y) 2,3,5:rb=8'hFF; 4:rb=8'h03; 6:rb=8'h7E; 7:rb=8'h0E; 8:rb=8'h1C; 9:rb=8'h78; 10:rb=8'h30; default:rb=0; endcase // ヲ
            37:  case(y) 1:rb=8'h40; 2,8:rb=8'hF0; 3:rb=8'h31; 4:rb=8'h03; 5:rb=8'h07; 6:rb=8'h1E; 7:rb=8'hFC; default:rb=0; endcase // ン
            default: rb = 8'h00; 
        endcase
        pixel = rb[7-x];
    end
endmodule