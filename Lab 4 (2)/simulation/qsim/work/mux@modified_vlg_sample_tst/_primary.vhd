library verilog;
use verilog.vl_types.all;
entity muxModified_vlg_sample_tst is
    port(
        s0              : in     vl_logic;
        s1              : in     vl_logic;
        w0              : in     vl_logic;
        w1              : in     vl_logic;
        w2              : in     vl_logic;
        w3              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end muxModified_vlg_sample_tst;
