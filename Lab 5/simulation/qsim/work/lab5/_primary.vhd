library verilog;
use verilog.vl_types.all;
entity lab5 is
    port(
        led             : out    vl_logic_vector(1 to 7);
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        nled            : out    vl_logic_vector(1 to 7);
        sled            : out    vl_logic_vector(1 to 7);
        snled           : out    vl_logic_vector(1 to 7)
    );
end lab5;
