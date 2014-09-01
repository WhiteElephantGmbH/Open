with GNATCOM.Dispinterface;

package winword.CommandBarControls_Interface is

   type CommandBarControls_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out CommandBarControls_Type);

   function Pointer (This : CommandBarControls_Type)
     return Pointer_To_CommandBarControls;

   procedure Attach (This    : in out CommandBarControls_Type;
                     Pointer : in     Pointer_To_CommandBarControls);

   function Get_Application
     (This    : CommandBarControls_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : CommandBarControls_Type)
     return Interfaces.C.long;

   function Add
     (This      : CommandBarControls_Type;
      uType     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Id        : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Parameter : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Before    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Temporary : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return Pointer_To_CommandBarControl;

   function Get_Count
     (This              : CommandBarControls_Type)
     return Interfaces.C.int;

   function Get_Item
     (This  : CommandBarControls_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return Pointer_To_CommandBarControl;

   function Getu_NewEnum
     (This    : CommandBarControls_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Parent
     (This : CommandBarControls_Type)
     return Pointer_To_CommandBar;

end winword.CommandBarControls_Interface;

