library verilog;
use verilog.vl_types.all;
entity seg7 is
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        n               : in     vl_logic;
        leds            : out    vl_logic_vector(1 to 7);
        neg             : out    vl_logic_vector(1 to 7)
    );
end seg7;
