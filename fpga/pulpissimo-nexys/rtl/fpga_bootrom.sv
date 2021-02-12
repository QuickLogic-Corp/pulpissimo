//-----------------------------------------------------------------------------
// Title         : FPGA Bootrom for PULPissimo
//-----------------------------------------------------------------------------
// File          : fpga_bootrom.sv
// Author        : Manuel Eggimann  <meggimann@iis.ee.ethz.ch>
// Created       : 29.05.2019
//-----------------------------------------------------------------------------
// Description :
// Mockup bootrom that keeps returning jal x0,0 to trap the core in an infinite
// loop until the debug module takes over control.
//-----------------------------------------------------------------------------
// Copyright (C) 2013-2019 ETH Zurich, University of Bologna
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License. You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.
//-----------------------------------------------------------------------------


module fpga_bootrom #
  (
   parameter ADDR_WIDTH=32,
   parameter DATA_WIDTH=32
   )
   (
    input logic 		  CLK,
    input logic 		  CEN,
    input logic [ADDR_WIDTH-1:0]  A,
    output logic [DATA_WIDTH-1:0] Q
    );

   logic [31:0] 		  value;
   assign Q = value;
   
   always @(posedge CLK) begin
      case (A)
	0000: value <= 32'b00001000100000000000000001101111;
	0001: value <= 32'b00001000010000000000000001101111;
	0002: value <= 32'b00001000000000000000000001101111;
	0003: value <= 32'b00000111110000000000000001101111;
	0004: value <= 32'b00000111100000000000000001101111;
	0005: value <= 32'b00000111010000000000000001101111;
	0006: value <= 32'b00000111000000000000000001101111;
	0007: value <= 32'b00000110110000000000000001101111;
	0008: value <= 32'b00000110100000000000000001101111;
	0009: value <= 32'b00000110010000000000000001101111;
	0010: value <= 32'b00000110000000000000000001101111;
	0011: value <= 32'b00000101110000000000000001101111;
	0012: value <= 32'b00000101100000000000000001101111;
	0013: value <= 32'b00000101010000000000000001101111;
	0014: value <= 32'b00000101000000000000000001101111;
	0015: value <= 32'b00000100110000000000000001101111;
	0016: value <= 32'b00000100100000000000000001101111;
	0017: value <= 32'b00000100010000000000000001101111;
	0018: value <= 32'b00000100000000000000000001101111;
	0019: value <= 32'b00000011110000000000000001101111;
	0020: value <= 32'b00000011100000000000000001101111;
	0021: value <= 32'b00000011010000000000000001101111;
	0022: value <= 32'b00000011000000000000000001101111;
	0023: value <= 32'b00000010110000000000000001101111;
	0024: value <= 32'b00000010100000000000000001101111;
	0025: value <= 32'b00000010010000000000000001101111;
	0026: value <= 32'b00000010000000000000000001101111;
	0027: value <= 32'b00000001110000000000000001101111;
	0028: value <= 32'b00000001100000000000000001101111;
	0029: value <= 32'b00000001010000000000000001101111;
	0030: value <= 32'b00000001000000000000000001101111;
	0031: value <= 32'b00000000110000000000000001101111;
	0032: value <= 32'b00000000110000000000000001101111;
	0033: value <= 32'b00000000000000000000000001101111;
	0034: value <= 32'b00110000001000000000000001110011;
	0035: value <= 32'b00000010000000000010000100010111;
	0036: value <= 32'b11001001110000010000000100010011;
	0037: value <= 32'b00111011111000000000000001101111;
	0038: value <= 32'b10000101100000101000000100110010;
	0039: value <= 32'b00011010000100001010011110110111;
	0040: value <= 32'b00000100000000000000011100110111;
	0041: value <= 32'b10000000111001111010001000100011;
	0042: value <= 32'b10000000110001111000011000010011;
	0043: value <= 32'b10010101100100110100001000010100;
	0044: value <= 32'b11011100011000110000000001010110;
	0045: value <= 32'b10000110100100110000000000000101;
	0046: value <= 32'b01000010100101001000001001000111;
	0047: value <= 32'b10000001010001111000011010010011;
	0048: value <= 32'b10000111100100111100001010011000;
	0049: value <= 32'b11000011100110001000000010000111;
	0050: value <= 32'b00000000011100111000000010000010;
	0051: value <= 32'b10111111111110010001000001010000;
	0052: value <= 32'b10010111101010100110011110001001;
	0053: value <= 32'b10010001110001111010011110000011;
	0054: value <= 32'b01100111100001011110101110101101;
	0055: value <= 32'b00100000001000111001010100111110;
	0056: value <= 32'b00000111001101110000000000000101;
	0057: value <= 32'b00000111101101110010000000000111;
	0058: value <= 32'b11000001010111000001000000000000;
	0059: value <= 32'b00000000001101110000011110010011;
	0060: value <= 32'b00001000001101111100010100011100;
	0061: value <= 32'b10010111101100110010000000001111;
	0062: value <= 32'b11100111101100111101111010000101;
	0063: value <= 32'b10110101101100110000000100000111;
	0064: value <= 32'b11000101010111001110111010000101;
	0065: value <= 32'b10000111100100111000110111011001;
	0066: value <= 32'b00000111001101111111111111110110;
	0067: value <= 32'b11001001000011000111000001000111;
	0068: value <= 32'b11001001010111001000111111011001;
	0069: value <= 32'b10010000000000000000011110110111;
	0070: value <= 32'b11001101000111000000011110000101;
	0071: value <= 32'b00011010000100000010011110110111;
	0072: value <= 32'b00010000000001111000011100010011;
	0073: value <= 32'b10000111000100111100001100010000;
	0074: value <= 32'b11000011000101000001000001000111;
	0075: value <= 32'b00010000100001111000011010010011;
	0076: value <= 32'b11000010100110000100011101010001;
	0077: value <= 32'b00010010000001111000011010010011;
	0078: value <= 32'b01000110011100011100001010001000;
	0079: value <= 32'b00010010010001111000011010010011;
	0080: value <= 32'b10000111100100111100001010010000;
	0081: value <= 32'b11000011100110000001001010000111;
	0082: value <= 32'b10000000100000101011111110010001;
	0083: value <= 32'b11000010001001100001000101000001;
	0084: value <= 32'b10000110000100110110010010000101;
	0085: value <= 32'b11000100001000100100000010000100;
	0086: value <= 32'b10000100001010100100011011000001;
	0087: value <= 32'b01000101100000011001011000101010;
	0088: value <= 32'b10010100101000101100011000000110;
	0089: value <= 32'b10100110100000110011011110110101;
	0090: value <= 32'b01000111101111010100000011000100;
	0091: value <= 32'b00000000110101111100100001100011;
	0092: value <= 32'b01000000101100101110011010011001;
	0093: value <= 32'b01000100100100100100010000100010;
	0094: value <= 32'b10000000100000100000000101000001;
	0095: value <= 32'b01100110000001010100011011000001;
	0096: value <= 32'b01000001100001100000011000010011;
	0097: value <= 32'b10000101001000101001011000100010;
	0098: value <= 32'b01000000101100100100010000100010;
	0099: value <= 32'b00000110100100100100010010010010;
	0100: value <= 32'b00000001010000010100010111000001;
	0101: value <= 32'b10100111101101111011111100110101;
	0102: value <= 32'b10000111000100110001101000010000;
	0103: value <= 32'b01100110100100011000000001000111;
	0104: value <= 32'b10000111100100111100001100010100;
	0105: value <= 32'b01000111000000011000000101000111;
	0106: value <= 32'b00000000101001110100100001100011;
	0107: value <= 32'b00011010000100001010011110110111;
	0108: value <= 32'b10100100001000110110011100010001;
	0109: value <= 32'b10000000100000101000000011100111;
	0110: value <= 32'b00010000010100000000000001110011;
	0111: value <= 32'b00000111000001011100001110010100;
	0112: value <= 32'b00010001000000011011011111100101;
	0113: value <= 32'b00000100001101111100110000100010;
	0114: value <= 32'b11001010001001100001110000000000;
	0115: value <= 32'b11000110010011101100100001001010;
	0116: value <= 32'b00001001000100110110010010000101;
	0117: value <= 32'b01101001100010010000000000000100;
	0118: value <= 32'b11000100010100101100111000000110;
	0119: value <= 32'b10001010001100111100001001010110;
	0120: value <= 32'b10011001001001100000000100101001;
	0121: value <= 32'b10010010100110100010000000100011;
	0122: value <= 32'b10010010101010100010001000100011;
	0123: value <= 32'b10010000000010100010111000100011;
	0124: value <= 32'b01000000000010010010001000100011;
	0125: value <= 32'b00011010000100000010011100110111;
	0126: value <= 32'b10001010101010100100001100011100;
	0127: value <= 32'b11000111101100110100010101010001;
	0128: value <= 32'b11000011000111001100000000010111;
	0129: value <= 32'b00011010000100000110011110110111;
	0130: value <= 32'b00000000010001111000011010010011;
	0131: value <= 32'b11000010100110000101011101111101;
	0132: value <= 32'b00000000100001111000011000010011;
	0133: value <= 32'b10000110000100111100001000011000;
	0134: value <= 32'b11000010000110000000000011000111;
	0135: value <= 32'b00000001000001111000011000010011;
	0136: value <= 32'b10000110000100111100001000011000;
	0137: value <= 32'b11000010000110000000000101000111;
	0138: value <= 32'b00000001100001111000011000010011;
	0139: value <= 32'b10000110000100111100001000011000;
	0140: value <= 32'b11000010000110000000000111000111;
	0141: value <= 32'b00000010000001111000011110010011;
	0142: value <= 32'b01000010100111001100001110011000;
	0143: value <= 32'b10010010100010011000100110010011;
	0144: value <= 32'b11000000011101111011011110110011;
	0145: value <= 32'b01000010100111001100001010011100;
	0146: value <= 32'b11000000000101111011011110110011;
	0147: value <= 32'b00110111101000011100001010011100;
	0148: value <= 32'b00000000000001000000010100010011;
	0149: value <= 32'b00100111100000110011110111100101;
	0150: value <= 32'b00101000000000111001001000001010;
	0151: value <= 32'b10000011000100110100000011001001;
	0152: value <= 32'b10001000100100110100000111000100;
	0153: value <= 32'b00000110101100111111111111110111;
	0154: value <= 32'b01000110000000010100000011110000;
	0155: value <= 32'b00000000000001000000011110010011;
	0156: value <= 32'b00011100000000000000010100110111;
	0157: value <= 32'b01000010000001001000010010010011;
	0158: value <= 32'b00000011000001100001010101100011;
	0159: value <= 32'b10010111101010100110011110001001;
	0160: value <= 32'b10100000001000110110011000000101;
	0161: value <= 32'b00000110000100111001001011000111;
	0162: value <= 32'b10010110001010100101000110010110;
	0163: value <= 32'b00011010000000000000010110110111;
	0164: value <= 32'b10010000000001111010111000100011;
	0165: value <= 32'b10010011010101111010001000100011;
	0166: value <= 32'b01000000000001100000011000010011;
	0167: value <= 32'b00110100001001011000010110010011;
	0168: value <= 32'b11110111000000110011101111100101;
	0169: value <= 32'b01101010011000110010000001100111;
	0170: value <= 32'b11110101100000110000000011100101;
	0171: value <= 32'b10010101101110100010000010010111;
	0172: value <= 32'b00000000101101010110100101100011;
	0173: value <= 32'b00000111110000010000011000000101;
	0174: value <= 32'b00000101101100111011011111000001;
	0175: value <= 32'b01111011111000110000000100110101;
	0176: value <= 32'b11110101000000111111111010110111;
	0177: value <= 32'b10010101001110100010000010010111;
	0178: value <= 32'b10001101011101011001010101000110;
	0179: value <= 32'b01000110101101111011011111100101;
	0180: value <= 32'b10000111000100110001101000010000;
	0181: value <= 32'b01000011000111000000011101000110;
	0182: value <= 32'b11000110000001100001000101000001;
	0183: value <= 32'b11000100001000101000001110100001;
	0184: value <= 32'b11110110010001111011011110110011;
	0185: value <= 32'b10000011100001011100101110001101;
	0186: value <= 32'b00000000000101111010011101100011;
	0187: value <= 32'b01000101000000011100011110000101;
	0188: value <= 32'b00000010011001111010111001100011;
	0189: value <= 32'b11000011000111001010000000000001;
	0190: value <= 32'b01000000000111001000010000111010;
	0191: value <= 32'b00010000000001111111011110010011;
	0192: value <= 32'b01000101000001011110011110000001;
	0193: value <= 32'b10111111110101010011110101001001;
	0194: value <= 32'b00011100000000001000011110110111;
	0195: value <= 32'b00001000000001111000011110010011;
	0196: value <= 32'b10100000000000011001011110000010;
	0197: value <= 32'b10100110100000110011111101101101;
	0198: value <= 32'b11001010100000010000110001000110;
	0199: value <= 32'b00011010000100001010011110110111;
	0200: value <= 32'b10000000000001111010000000100011;
	0201: value <= 32'b00010000010100000000000001110011;
	0202: value <= 32'b01000101000001011011111111110101;
	0203: value <= 32'b10000111101010100011110101011001;
	0204: value <= 32'b10010011011000111001011000101110;
	0205: value <= 32'b10000000100000100000000011000101;
	0206: value <= 32'b00000000000101011100011100001011;
	0207: value <= 32'b00000000111001111000000010101011;
	0208: value <= 32'b01110001010111011011111111001101;
	0209: value <= 32'b11011100010100101100001010100110;
	0210: value <= 32'b01101010000010011000010010101010;
	0211: value <= 32'b10011010001001101101111001001110;
	0212: value <= 32'b11000000110010100110100110000101;
	0213: value <= 32'b11010100011000101101011001011110;
	0214: value <= 32'b11000100101000101100011010000110;
	0215: value <= 32'b11011000010110101101101001010110;
	0216: value <= 32'b11010000011010101101001001100110;
	0217: value <= 32'b10001001001001101100111001101110;
	0218: value <= 32'b01001100000000010011001111010101;
	0219: value <= 32'b00000001001101001000101110110011;
	0220: value <= 32'b10100111100000111100011001010010;
	0221: value <= 32'b01100000011000110100000011001011;
	0222: value <= 32'b00100110101101110000011011111100;
	0223: value <= 32'b00000111101101110001101000010000;
	0224: value <= 32'b10000111000100110000000001010000;
	0225: value <= 32'b00000111100110010000101001000110;
	0226: value <= 32'b01100111101101111100001100011100;
	0227: value <= 32'b01010111011111010001101000010000;
	0228: value <= 32'b00000000010001111000011000010011;
	0229: value <= 32'b10000110000100111100001000011000;
	0230: value <= 32'b11000010000110000000000010000111;
	0231: value <= 32'b00000000110001111000011000010011;
	0232: value <= 32'b10000110000100111100001000011000;
	0233: value <= 32'b11000010000110000000000100000111;
	0234: value <= 32'b00000001010001111000011000010011;
	0235: value <= 32'b10000110000100111100001000011000;
	0236: value <= 32'b11000010000110000000000110000111;
	0237: value <= 32'b00000001110001111000011000010011;
	0238: value <= 32'b10000111100100111100001000011000;
	0239: value <= 32'b11000011100110000000001000000111;
	0240: value <= 32'b01000001010010111010011100000011;
	0241: value <= 32'b00011010000100000100011110110111;
	0242: value <= 32'b00000000000001101010000000100011;
	0243: value <= 32'b10100111100000111100001111011000;
	0244: value <= 32'b10010111100000100100000100001011;
	0245: value <= 32'b01100111100001011010000000000001;
	0246: value <= 32'b01000001100001111000011110010011;
	0247: value <= 32'b00100000111110010111101000000011;
	0248: value <= 32'b10000111100100110110011110000101;
	0249: value <= 32'b01111101100000110100000111000111;
	0250: value <= 32'b01100111100001010010000011111001;
	0251: value <= 32'b01000010000001111000011110010011;
	0252: value <= 32'b00100000111110010111110100000011;
	0253: value <= 32'b11100100000000000000101100110111;
	0254: value <= 32'b01000010010010011000101010010011;
	0255: value <= 32'b01001100100000011001101101101110;
	0256: value <= 32'b10100110100000111001101011001010;
	0257: value <= 32'b11100101011000110000000000001010;
	0258: value <= 32'b00001100000001010000000011011100;
	0259: value <= 32'b10110111100101010000100101000001;
	0260: value <= 32'b10100100000000110100011110110010;
	0261: value <= 32'b01110110011000111001001000000111;
	0262: value <= 32'b00000100000100110000000010001101;
	0263: value <= 32'b00110100001100110000000000111101;
	0264: value <= 32'b00000111101101111100001000000100;
	0265: value <= 32'b10000110101000100000000100000000;
	0266: value <= 32'b00000000111110110111110001100011;
	0267: value <= 32'b10000101110100101000011001101110;
	0268: value <= 32'b00111001011110011000010100100110;
	0269: value <= 32'b10011010001000101001110110100010;
	0270: value <= 32'b01000000100011010000110100110011;
	0271: value <= 32'b10110111110100010000110010000101;
	0272: value <= 32'b10000101110100101000011000100110;
	0273: value <= 32'b00110001011010011000010100100110;
	0274: value <= 32'b10000101101001101000011000100010;
	0275: value <= 32'b00110101110001011000010101101110;
	0276: value <= 32'b00010001010000011011011111010101;
	0277: value <= 32'b00111101101001011100011000000110;
	default: value <= 32'h00000000;
	
     endcase
     end
// Assign value = 32'h0000006f; //jal x0,0;
endmodule
