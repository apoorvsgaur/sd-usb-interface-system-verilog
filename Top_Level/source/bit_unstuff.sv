// $Id: $
// File name:   bit_unstuff.sv
// Created:     12/6/2015
// Author:      Kathrine Bauschka
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: USB Rx Bit Unstuff Block

module bit_unstuff
(
    input wire clk,
    input wire n_rst,
    input wire d_orig,
    input wire d_edge,
    input wire shift_enable,
    output wire shift_stop
);

    typedef enum bit [3:0] {IDLE, CLEAR, COUNT} state_type;
    state_type cur_state;
    state_type next_state;

    reg [3:0] useless, also_useless;
    reg stop_prep;
    reg cnt_clear;
    reg cnt_enable;
    reg cnt_done;
    reg cur_shift_stop;

    assign shift_stop = cur_shift_stop;

    always_ff @ (posedge clk, negedge n_rst) begin
        if (n_rst == 0) begin
            cur_state <= IDLE;
        end else begin
            cur_state <= next_state;
        end
    end

    always_comb begin //next state logic
        next_state = cur_state;
        case (cur_state)
            IDLE : begin
                if (stop_prep == 1) begin
                    next_state = COUNT;
                end
            end
            COUNT : begin
                if (cnt_done == 1) begin
                    next_state = IDLE;
                end
            end
        endcase
    end

    always_comb begin //output logic
        cnt_enable = 0;
        cur_shift_stop = 0;
        case (cur_state)
            IDLE : begin
                //no values on
            end
            COUNT : begin
                cnt_enable = 1;
                cur_shift_stop = 1;
            end
        endcase
    end

    assign cnt_clear = (stop_prep & !cnt_enable);

    flex_counter_stuff ONES(.clk(clk),
                            .n_rst(n_rst),
                            .clear(d_edge),
                            .count_enable(d_orig & shift_enable),
                            .rollover_val(4'b0110), //6
                            .count_out(useless),
                            .rollover_flag(stop_prep)
                           );

    flex_counter_stuff CLKS(.clk(clk),
                            .n_rst(n_rst),
                            .clear(cnt_clear),
                            .count_enable(cnt_enable),
                            .rollover_val(4'b1000), //8
                            .count_out(also_useless),
                            .rollover_flag(cnt_done)
                           );

endmodule
