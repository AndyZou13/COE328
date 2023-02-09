library verilog;
use verilog.vl_types.all;
entity gpul_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        EN              : in     vl_logic;
        fsmres          : in     vl_logic;
        l1res           : in     vl_logic;
        l2res           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end gpul_vlg_sample_tst;
