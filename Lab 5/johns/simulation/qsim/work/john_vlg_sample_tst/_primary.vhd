library verilog;
use verilog.vl_types.all;
entity john_vlg_sample_tst is
    port(
        Clear           : in     vl_logic;
        Clock           : in     vl_logic;
        E               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end john_vlg_sample_tst;
