library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_textio.ALL;
use STD.textio.ALL;
use work.ctrl_pkg.all;


entity tb_signal_gen is
Port ( 
    i_clk        : out std_logic;
    i_ss         : out std_logic;
    i_sclk       : out std_logic;
    i_mosi       : out std_logic;
    rst          : out std_logic;                              -- reset signal for module
    o_miso       : in std_logic;
    o_register   : in STD_LOGIC_VECTOR(55 DOWNTO 0);
    i_register   : out STD_LOGIC_VECTOR(7 DOWNTO 0)
);
end tb_signal_gen;

architecture rtl of tb_signal_gen is
    
    --define the file where the test vector is
    constant cData : string := "/mnt/imesl/Projects/MSE_PA_Jansky_Meyer/digital/controller/simulation/inputData.txt";
    signal   clk    : std_logic := '0';
    constant clk_period : time := 1000 ns;
begin


    
    proc_spi_signal: PROCESS IS
    file text_file : text open read_mode is cData;
    variable Data : STD_LOGIC_VECTOR(7 downto 0);
    variable Register1 : STD_LOGIC_VECTOR(55 downto 0);
    variable a_data : std_logic_vector(7 downto 0) := (others => '0');
    variable ok : boolean;
    variable command : STD_LOGIC_VECTOR(3 downto 0);
    variable text_line : line;
    variable wait_time : time;
    variable wait_time2 : time;
    variable char : character;
    variable Reset : STD_LOGIC;
    
    
    
    begin
        i_ss <= '1';
        i_sclk <= '0';
        i_mosi <= '0';
        rst <= '0';
        i_register <= a_data;
        wait for 30 us;
        while not endfile(text_file) loop
            readline(text_file, text_line);
            
            -- Skip empty lines and single-line comments
            if text_line.all'length = 0 or text_line.all(1) = '#' then
                next;
            else
                hread(text_line, command, ok);
                assert ok
                    report "Read 'command' failed for line " & text_line.all
                    severity failure;
                if command = "0001" then
                    read(text_line, wait_time, ok);
                    assert ok
                        report "Read 'wait_time' failed for line " & text_line.all
                        severity failure;
                    read(text_line, wait_time2, ok);
                    assert ok
                        report "Read 'wait_time2' failed for line " & text_line.all
                        severity failure;
                    read(text_line, Reset, ok);
                    assert ok
                        report "Read 'Reset' failed for line " & text_line.all
                        severity failure;
                    hread(text_line, Data, ok);
                    assert ok
                        report "Read 'Data' failed for line " & text_line.all
                        severity failure;
                    report "Data sent to SPI was" & hstr(Data) severity note;

                    rst<= Reset;
                    wait for wait_time2/2;
                    rst <= '0';
                    i_ss <= '0'; --slave select to zero (start sequence)
                    wait for wait_time2/2;
                    i_sclk <= '1';
                    i_mosi<=Data(7); --fiReset bit
                    wait for wait_time2/2;
                    i_sclk <= '0';  
                    wait for wait_time2/2;
                    
                    i_sclk <= '1';
                    i_mosi<=Data(6); --second bit
                    wait for wait_time2/2;
                    i_sclk <= '0';  
                    wait for wait_time2/2;
                    
                    i_sclk <= '1';
                    i_mosi<=Data(5); --third bit
                    wait for wait_time2/2;
                    i_sclk <= '0';  
                    wait for wait_time2/2;
                    
                    i_sclk <= '1';
                    i_mosi<=Data(4); --4'th bit
                    wait for wait_time2/2;
                    i_sclk <= '0';
                    wait for wait_time2/2;
                    
                    
                    i_sclk <= '1';
                    i_mosi<=Data(3); --5'th bit
                    wait for wait_time2/2;
                    i_sclk <= '0';
                    wait for wait_time2/2;
                    
                    i_sclk <= '1';
                    i_mosi<=Data(2); --6'th bit
                    wait for wait_time2/2;
                    i_sclk <= '0';  
                    wait for wait_time2/2;
                    
                    i_sclk <= '1';
                    i_mosi<=Data(1); --7'th bit
                    wait for wait_time2/2;
                    i_sclk <= '0';  
                    wait for wait_time2/2;
                    
                    i_sclk <= '1';
                    i_mosi<=Data(0); --8'th bit
                    wait for wait_time2/2;
                    i_sclk <= '0';  
                    wait for wait_time2/2;
                    i_ss <= '1';--slave select to one (stop sequence)
                    
                    
                    wait for wait_time;
                elsif command = "0000" then
                    hread(text_line, Register1, ok);
                    assert ok
                        report "Read 'Register1' failed for line " & text_line.all
                        severity failure;
                    report "register should be: " & hstr(Register1) & "register is: " & hstr(o_register);
                    assert Register1=o_register
                        report "Register was not as expected" & text_line.all
                        severity failure;
                elsif command = "0010" then
                    hread(text_line, Data, ok);
                    assert ok
                        report "Read 'Data' failed for line " & text_line.all
                        severity failure;
                    a_data := Data;
                    i_register <= a_data;
                    report "i_register: " & hstr(a_data);
                    wait for clk_period*3;
                end if;
                --Print trailing comment to console, if any
                read(text_line, char, ok);-- Skip expected newline
                read(text_line, char, ok);
                if char = '#' then
                    read(text_line, char, ok); --Skip expected newline
                    report text_line.all;
                end if;
            end if;
        end loop;
        report "Test: OK";
        
        wait;
        --finish
        end process proc_spi_signal;
    
        
        i_clk <= clk;
        clk <= not clk after clk_period / 2;
                    
                        
    
end rtl;