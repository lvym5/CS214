-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------------i
with Ada.Text_IO; use Ada.Text_IO;
with Name_Package; use Name_Package;

package body name_package is
	procedure Init(TheName: out Name; First, Middle, Last : in String) is begin TheName.MyFirst := First; TheName.MyMiddle := Middle; TheName.MyLast := Last; end Init;

	function getFirst(TheName : in Name) return String is begin return TheName.MyFirst; end getFirst;

	function getMiddle(TheName : in Name) return String is begin return TheName.MyMiddle; end getMiddle;

	function getLast(TheName : in Name) return String is begin return TheName.MyLast; end getLast;

	function getFullName(TheName: in Name) return String is begin return TheName.myFirst & TheName.MyMiddle & TheName.MyLast; end getFullName;

	procedure Put(TheName: in Name) is begin Put(getFullName(TheName)); end Put;

end name_package;

procedure name_package is
	aName : Name_Package.Name;

begin
	Name_Package.Init(aName, "John    ", "Paul    ", "Jones   ");
end Name_Package;
