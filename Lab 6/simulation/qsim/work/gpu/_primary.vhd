library verilog;
use verilog.vl_types.all;
entity gpu is
    port(
        nr2             : out    vl_logic_vector(1 to 7);
        clock           : in     vl_logic;
        l1res           : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        l2res           : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        EN              : in     vl_logic;
        fsmres          : in     vl_logic;
        r1              : out    vl_logic_vector(1 to 7);
        r2              : out    vl_logic_vector(1 to 7);
        studentid       : out    vl_logic_vector(1 to 7)
    );
end gpu;
