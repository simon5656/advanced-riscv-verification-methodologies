//
// Copyright (c) 2022 Imperas Software Ltd., www.imperas.com
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
// either express or implied.
//
// See the License for the specific language governing permissions and
// limitations under the License.
//
//
 


typedef struct {
    string ins_str;
    //instr_name_t asm;
    ops_t ops[5];
    int hart;
    int issue;
} ins_rv32zcbzmul_t;


covergroup c_mul_cg with function sample(ins_rv32zcbzmul_t ins);
    option.per_instance = 1; 
    option.comment = "Multiply, 16-bit encoding";

    cp_asm_count : coverpoint ins.ins_str == "c.mul" {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    
    cp_rdp : coverpoint get_gpr_c_reg(ins.ops[0].key, "C-MUL") {
        option.comment = "RD (GPR) register assignment";
    }
    
    cp_rs2p : coverpoint get_gpr_c_reg(ins.ops[1].key, "C-MUL") {
        option.comment = "RS2 (GPR) register assignment";
    }
    
    cp_rdp_toggle : coverpoint unsigned'(int'(ins.ops[3].val)) {
        option.comment = "RDP Toggle bits";
        wildcard bins bit_0_0  = {32'b???????????????????????????????0};
        wildcard bins bit_1_0  = {32'b??????????????????????????????0?};
        wildcard bins bit_2_0  = {32'b?????????????????????????????0??};
        wildcard bins bit_3_0  = {32'b????????????????????????????0???};
        wildcard bins bit_4_0  = {32'b???????????????????????????0????};
        wildcard bins bit_5_0  = {32'b??????????????????????????0?????};
        wildcard bins bit_6_0  = {32'b?????????????????????????0??????};
        wildcard bins bit_7_0  = {32'b????????????????????????0???????};
        wildcard bins bit_8_0  = {32'b???????????????????????0????????};
        wildcard bins bit_9_0  = {32'b??????????????????????0?????????};
        wildcard bins bit_10_0  = {32'b?????????????????????0??????????};
        wildcard bins bit_11_0  = {32'b????????????????????0???????????};
        wildcard bins bit_12_0  = {32'b???????????????????0????????????};
        wildcard bins bit_13_0  = {32'b??????????????????0?????????????};
        wildcard bins bit_14_0  = {32'b?????????????????0??????????????};
        wildcard bins bit_15_0  = {32'b????????????????0???????????????};
        wildcard bins bit_16_0  = {32'b???????????????0????????????????};
        wildcard bins bit_17_0  = {32'b??????????????0?????????????????};
        wildcard bins bit_18_0  = {32'b?????????????0??????????????????};
        wildcard bins bit_19_0  = {32'b????????????0???????????????????};
        wildcard bins bit_20_0  = {32'b???????????0????????????????????};
        wildcard bins bit_21_0  = {32'b??????????0?????????????????????};
        wildcard bins bit_22_0  = {32'b?????????0??????????????????????};
        wildcard bins bit_23_0  = {32'b????????0???????????????????????};
        wildcard bins bit_24_0  = {32'b???????0????????????????????????};
        wildcard bins bit_25_0  = {32'b??????0?????????????????????????};
        wildcard bins bit_26_0  = {32'b?????0??????????????????????????};
        wildcard bins bit_27_0  = {32'b????0???????????????????????????};
        wildcard bins bit_28_0  = {32'b???0????????????????????????????};
        wildcard bins bit_29_0  = {32'b??0?????????????????????????????};
        wildcard bins bit_30_0  = {32'b?0??????????????????????????????};
        wildcard bins bit_31_0  = {32'b0???????????????????????????????};
        wildcard bins bit_0_1  = {32'b???????????????????????????????1};
        wildcard bins bit_1_1  = {32'b??????????????????????????????1?};
        wildcard bins bit_2_1  = {32'b?????????????????????????????1??};
        wildcard bins bit_3_1  = {32'b????????????????????????????1???};
        wildcard bins bit_4_1  = {32'b???????????????????????????1????};
        wildcard bins bit_5_1  = {32'b??????????????????????????1?????};
        wildcard bins bit_6_1  = {32'b?????????????????????????1??????};
        wildcard bins bit_7_1  = {32'b????????????????????????1???????};
        wildcard bins bit_8_1  = {32'b???????????????????????1????????};
        wildcard bins bit_9_1  = {32'b??????????????????????1?????????};
        wildcard bins bit_10_1  = {32'b?????????????????????1??????????};
        wildcard bins bit_11_1  = {32'b????????????????????1???????????};
        wildcard bins bit_12_1  = {32'b???????????????????1????????????};
        wildcard bins bit_13_1  = {32'b??????????????????1?????????????};
        wildcard bins bit_14_1  = {32'b?????????????????1??????????????};
        wildcard bins bit_15_1  = {32'b????????????????1???????????????};
        wildcard bins bit_16_1  = {32'b???????????????1????????????????};
        wildcard bins bit_17_1  = {32'b??????????????1?????????????????};
        wildcard bins bit_18_1  = {32'b?????????????1??????????????????};
        wildcard bins bit_19_1  = {32'b????????????1???????????????????};
        wildcard bins bit_20_1  = {32'b???????????1????????????????????};
        wildcard bins bit_21_1  = {32'b??????????1?????????????????????};
        wildcard bins bit_22_1  = {32'b?????????1??????????????????????};
        wildcard bins bit_23_1  = {32'b????????1???????????????????????};
        wildcard bins bit_24_1  = {32'b???????1????????????????????????};
        wildcard bins bit_25_1  = {32'b??????1?????????????????????????};
        wildcard bins bit_26_1  = {32'b?????1??????????????????????????};
        wildcard bins bit_27_1  = {32'b????1???????????????????????????};
        wildcard bins bit_28_1  = {32'b???1????????????????????????????};
        wildcard bins bit_29_1  = {32'b??1?????????????????????????????};
        wildcard bins bit_30_1  = {32'b?1??????????????????????????????};
        wildcard bins bit_31_1  = {32'b1???????????????????????????????};
    }
    
    cp_rdp_maxvals : coverpoint unsigned'(int'(ins.ops[3].val)) {
        option.comment = "RDP Max values";
        bins zeros  = {0};
        bins min  = {32'b1000000000000000000000000000000};
        bins max  = {32'b0111111111111111111111111111111};
        bins ones  = {32'b1111111111111111111111111111111};
    }
    
    cp_rs2p_toggle : coverpoint unsigned'(int'(ins.ops[3].val)) {
        option.comment = "RS2P Toggle bits";
        wildcard bins bit_0_0  = {32'b???????????????????????????????0};
        wildcard bins bit_1_0  = {32'b??????????????????????????????0?};
        wildcard bins bit_2_0  = {32'b?????????????????????????????0??};
        wildcard bins bit_3_0  = {32'b????????????????????????????0???};
        wildcard bins bit_4_0  = {32'b???????????????????????????0????};
        wildcard bins bit_5_0  = {32'b??????????????????????????0?????};
        wildcard bins bit_6_0  = {32'b?????????????????????????0??????};
        wildcard bins bit_7_0  = {32'b????????????????????????0???????};
        wildcard bins bit_8_0  = {32'b???????????????????????0????????};
        wildcard bins bit_9_0  = {32'b??????????????????????0?????????};
        wildcard bins bit_10_0  = {32'b?????????????????????0??????????};
        wildcard bins bit_11_0  = {32'b????????????????????0???????????};
        wildcard bins bit_12_0  = {32'b???????????????????0????????????};
        wildcard bins bit_13_0  = {32'b??????????????????0?????????????};
        wildcard bins bit_14_0  = {32'b?????????????????0??????????????};
        wildcard bins bit_15_0  = {32'b????????????????0???????????????};
        wildcard bins bit_16_0  = {32'b???????????????0????????????????};
        wildcard bins bit_17_0  = {32'b??????????????0?????????????????};
        wildcard bins bit_18_0  = {32'b?????????????0??????????????????};
        wildcard bins bit_19_0  = {32'b????????????0???????????????????};
        wildcard bins bit_20_0  = {32'b???????????0????????????????????};
        wildcard bins bit_21_0  = {32'b??????????0?????????????????????};
        wildcard bins bit_22_0  = {32'b?????????0??????????????????????};
        wildcard bins bit_23_0  = {32'b????????0???????????????????????};
        wildcard bins bit_24_0  = {32'b???????0????????????????????????};
        wildcard bins bit_25_0  = {32'b??????0?????????????????????????};
        wildcard bins bit_26_0  = {32'b?????0??????????????????????????};
        wildcard bins bit_27_0  = {32'b????0???????????????????????????};
        wildcard bins bit_28_0  = {32'b???0????????????????????????????};
        wildcard bins bit_29_0  = {32'b??0?????????????????????????????};
        wildcard bins bit_30_0  = {32'b?0??????????????????????????????};
        wildcard bins bit_31_0  = {32'b0???????????????????????????????};
        wildcard bins bit_0_1  = {32'b???????????????????????????????1};
        wildcard bins bit_1_1  = {32'b??????????????????????????????1?};
        wildcard bins bit_2_1  = {32'b?????????????????????????????1??};
        wildcard bins bit_3_1  = {32'b????????????????????????????1???};
        wildcard bins bit_4_1  = {32'b???????????????????????????1????};
        wildcard bins bit_5_1  = {32'b??????????????????????????1?????};
        wildcard bins bit_6_1  = {32'b?????????????????????????1??????};
        wildcard bins bit_7_1  = {32'b????????????????????????1???????};
        wildcard bins bit_8_1  = {32'b???????????????????????1????????};
        wildcard bins bit_9_1  = {32'b??????????????????????1?????????};
        wildcard bins bit_10_1  = {32'b?????????????????????1??????????};
        wildcard bins bit_11_1  = {32'b????????????????????1???????????};
        wildcard bins bit_12_1  = {32'b???????????????????1????????????};
        wildcard bins bit_13_1  = {32'b??????????????????1?????????????};
        wildcard bins bit_14_1  = {32'b?????????????????1??????????????};
        wildcard bins bit_15_1  = {32'b????????????????1???????????????};
        wildcard bins bit_16_1  = {32'b???????????????1????????????????};
        wildcard bins bit_17_1  = {32'b??????????????1?????????????????};
        wildcard bins bit_18_1  = {32'b?????????????1??????????????????};
        wildcard bins bit_19_1  = {32'b????????????1???????????????????};
        wildcard bins bit_20_1  = {32'b???????????1????????????????????};
        wildcard bins bit_21_1  = {32'b??????????1?????????????????????};
        wildcard bins bit_22_1  = {32'b?????????1??????????????????????};
        wildcard bins bit_23_1  = {32'b????????1???????????????????????};
        wildcard bins bit_24_1  = {32'b???????1????????????????????????};
        wildcard bins bit_25_1  = {32'b??????1?????????????????????????};
        wildcard bins bit_26_1  = {32'b?????1??????????????????????????};
        wildcard bins bit_27_1  = {32'b????1???????????????????????????};
        wildcard bins bit_28_1  = {32'b???1????????????????????????????};
        wildcard bins bit_29_1  = {32'b??1?????????????????????????????};
        wildcard bins bit_30_1  = {32'b?1??????????????????????????????};
        wildcard bins bit_31_1  = {32'b1???????????????????????????????};
    }
    
    cp_rs2p_maxvals : coverpoint unsigned'(int'(ins.ops[3].val)) {
        option.comment = "RDP Max values";
        bins zeros  = {0};
        bins min  = {32'b1000000000000000000000000000000};
        bins max  = {32'b0111111111111111111111111111111};
        bins ones  = {32'b1111111111111111111111111111111};
    }
    
endgroup


function ins_rv32zcbzmul_t get_rv32zcbzmul_inst(bit trap, int hart, int issue, string disass); // break and move this first bit out
    string insbin, ins_str, op[4], key, val;
    ins_rv32zcbzmul_t ins;
    int num, i, j;
    string s = disass;
    foreach (disass[c]) begin
        s[c] = (disass[c] == ",")? " " : disass[c];
    end
    ins.hart = hart;
    ins.issue = issue;
    num = $sscanf (s, "%s %s %s %s %s %s %s %s", insbin, ins_str, op[0], op[1], op[2], op[3], op[4], op[5]);
    ins.ins_str = ins_str;
    //$display("num(%d) ins_str(%s) op[0](%0s) op[1](%s) op[2](%s) op[3](%s)", num, ins_str, op[0], op[1], op[2], op[3]);
    for (i=0; i<num-2; i++) begin
        key = op[i];
        ins.ops[i].key=op[i]; // in case we dont update it as an indexed
        ins.ops[i].val=""; // not used
        for (j = 0; j < key.len(); j++) begin // if indexed addressing, convert offset(rs1) to op[i].key=rs1 op[i+1].key=offset
            if (key[j] == "(") begin
                ins.ops[i].key = key.substr(0,j-1); // offset
                ins.ops[i+1].key = key.substr(j+1,key.len()-2);
                i++; // step over +1
                //$display("indirect ins_str(%s) op[0](%0s).key(%s) op[1](%s).key(%s) op[2](%s).key(%s) op[3](%s).key(%s)", 
                //    ins_str, op[0], ins.ops[0].key, op[1], ins.ops[1].key, op[2], ins.ops[2].key, op[3], ins.ops[3].key);
                break;
            end
        end
    end
    for (i=0; i<num-2; i++) begin
        if (ins.ops[i].key[0] == "x") begin
            int idx = get_gpr_num(ins.ops[i].key);
            //$display("SAMPLE: %0s op[%0d]=%0s gpr(%0d)", ins_str,i, ins.ops[i].key, idx);
            if (idx < 0) begin
                ins.ops[i].val = ins.ops[i].key; // it is an immed already there
            end else begin
                ins.ops[i].val = string'(this.rvvi.x_wdata[hart][issue][idx]);
            end
        end else begin
            ins.ops[i].val = ins.ops[i].key;
        end       
    end
    return ins;
endfunction

function void rv32zcbzmul_sample(string inst_name, bit trap, int hart, int issue, string disass);
    case (inst_name)
        "c.mul"     : begin ins_rv32zcbzmul_t ins = get_rv32zcbzmul_inst(trap, hart, issue, disass); c_mul_cg.sample(ins); end
    endcase
endfunction


