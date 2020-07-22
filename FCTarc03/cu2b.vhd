LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY cu2b IS
PORT( in_cu        :  IN std_logic_vector(1 downto 0);
      out_cu       :  OUT std_logic_vector(7 downto 0)
);
end cu2b;

ARCHITECTURE cu2bBehave OF cu2b IS
BEGIN
    out_cu <=
    
    -- Fetch
    "11000000" WHEN (in_cu = "00") ELSE
    "00100000" WHEN (in_cu = "01") ELSE
    
    --Add
    
    "10011100" WHEN (in_cu = "10") ELSE
    "00000011" WHEN (in_cu = "11");
    
END cu2bBehave;