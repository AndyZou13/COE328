library verilog;
use verilog.vl_types.all;
entity john is
    port(
        led             : out    vl_logic_vector(1 to 7);
        Clear           : in     vl_logic;
        E               : in     vl_logic;
        Clock           : in     vl_logic;
        neg             : out    vl_logic_vector(1 to 7);
        Q               : out    vl_logic_vector(0 to 2)
    );
end john;
