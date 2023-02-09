library verilog;
use verilog.vl_types.all;
entity gpu_vlg_check_tst is
    port(
        nr2             : in     vl_logic_vector(1 to 7);
        r1              : in     vl_logic_vector(1 to 7);
        r2              : in     vl_logic_vector(1 to 7);
        studentid       : in     vl_logic_vector(1 to 7);
        sampler_rx      : in     vl_logic
    );
end gpu_vlg_check_tst;
