with GNATCOM.Dispinterface;

package winword.COMAddIn_Interface is

   type COMAddIn_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out COMAddIn_Type);

   function Pointer (This : COMAddIn_Type)
     return Pointer_To_COMAddIn;

   procedure Attach (This    : in out COMAddIn_Type;
                     Pointer : in     Pointer_To_COMAddIn);

   function Get_Application
     (This    : COMAddIn_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : COMAddIn_Type)
     return Interfaces.C.long;

   function Get_Description
     (This     : COMAddIn_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Description
     (This     : COMAddIn_Type;
      RetValue : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   function Get_ProgId
     (This     : COMAddIn_Type)
     return GNATCOM.Types.BSTR;

   function Get_Guid
     (This     : COMAddIn_Type)
     return GNATCOM.Types.BSTR;

   function Get_Connect
     (This     : COMAddIn_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Connect
     (This     : COMAddIn_Type;
      RetValue : GNATCOM.Types.VARIANT_BOOL);

   function Get_Object
     (This     : COMAddIn_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure Put_Object
     (This     : COMAddIn_Type;
      RetValue : GNATCOM.Types.Pointer_To_IDispatch);

   function Get_Parent
     (This    : COMAddIn_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

end winword.COMAddIn_Interface;

