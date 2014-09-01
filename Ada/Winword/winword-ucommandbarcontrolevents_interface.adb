with GNATCOM.Errors;

package body winword.uCommandBarControlEvents_Interface is

   procedure Initialize (This : in out uCommandBarControlEvents_Type) is
   begin
      Set_IID (This, IID_uCommandBarControlEvents);
   end Initialize;

   function Pointer (This : uCommandBarControlEvents_Type)
     return Pointer_To_uCommandBarControlEvents
   is
   begin
      return To_Pointer_To_uCommandBarControlEvents (Address (This));
   end Pointer;

   procedure Attach (This    : in out uCommandBarControlEvents_Type;
                     Pointer : in     Pointer_To_uCommandBarControlEvents)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

end winword.uCommandBarControlEvents_Interface;

