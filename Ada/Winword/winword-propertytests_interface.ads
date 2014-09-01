with GNATCOM.Dispinterface;

package winword.PropertyTests_Interface is

   type PropertyTests_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out PropertyTests_Type);

   function Pointer (This : PropertyTests_Type)
     return Pointer_To_PropertyTests;

   procedure Attach (This    : in out PropertyTests_Type;
                     Pointer : in     Pointer_To_PropertyTests);

   function Get_Application
     (This    : PropertyTests_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : PropertyTests_Type)
     return Interfaces.C.long;

   function Get_Item
     (This       : PropertyTests_Type;
      Index      : Interfaces.C.int;
      lcid       : Interfaces.C.long)
     return Pointer_To_PropertyTest;

   function Get_Count
     (This : PropertyTests_Type)
     return Interfaces.C.long;

   procedure Add
     (This        : PropertyTests_Type;
      Name        : GNATCOM.Types.BSTR;
      Condition   : MsoCondition;
      Value       : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      SecondValue : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Connector   : MsoConnector;
      Free        : Boolean := True);

   procedure Remove
     (This  : PropertyTests_Type;
      Index : Interfaces.C.int);

   function Getu_NewEnum
     (This      : PropertyTests_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

end winword.PropertyTests_Interface;

