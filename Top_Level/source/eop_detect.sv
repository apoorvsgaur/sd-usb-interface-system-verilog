// $Id: $
// File name:   eop_detect.sv
// Created:     10/5/2015
// Author:      Kathrine Bauschka
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Lab 6 Step 7.7.1 EOP Detector Block

module eop_detect
(
    input wire d_plus,
    input wire d_minus,
    output wire eop
);

    assign eop = (!(d_plus | d_minus)) ? 1'b1 : 1'b0;

endmodule
