library verilog;
use verilog.vl_types.all;
entity seg7_vlg_sample_tst is
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        n               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end seg7_vlg_sample_tst;
