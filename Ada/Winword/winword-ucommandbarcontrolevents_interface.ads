with GNATCOM.Interface;

package winword.uCommandBarControlEvents_Interface is

   type uCommandBarControlEvents_Type is
     new GNATCOM.Interface.Interface_Type with null record;

   procedure Initialize (This : in out uCommandBarControlEvents_Type);

   function Pointer (This : uCommandBarControlEvents_Type)
     return Pointer_To_uCommandBarControlEvents;

   procedure Attach (This    : in out uCommandBarControlEvents_Type;
                     Pointer : in     Pointer_To_uCommandBarControlEvents);

end winword.uCommandBarControlEvents_Interface;

