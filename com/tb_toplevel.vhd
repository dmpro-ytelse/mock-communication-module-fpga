LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY tb_toplevel IS
END tb_toplevel;
 
ARCHITECTURE behavior OF tb_toplevel IS 
 
 
    COMPONENT toplevel
    PORT(
         scu_states : IN  std_logic_vector(1 downto 0);
         processor_enable : IN  std_logic;
         chip_enable : IN  std_logic;
         write_enable : IN  std_logic;
         lbub : IN  std_logic;
         address : IN  std_logic_vector(18 downto 0);
         data : INOUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal scu_states : std_logic_vector(1 downto 0) := (others => '0');
   signal processor_enable : std_logic := '0';
   signal chip_enable : std_logic := '0';
   signal write_enable : std_logic := '0';
   signal lbub : std_logic := '0';
   signal address : std_logic_vector(18 downto 0) := (others => '0');

	--BiDirs
   signal data : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: toplevel PORT MAP (
          scu_states => scu_states,
          processor_enable => processor_enable,
          chip_enable => chip_enable,
          write_enable => write_enable,
          lbub => lbub,
          address => address,
          data => data
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
      
      scu_states <= "00";
      address(0) <= '1';

      wait;
   end process;

END;
