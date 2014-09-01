with GNATCOM.Dispinterface;

package winword.AddIn_Interface is

   type AddIn_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out AddIn_Type);

   function Pointer (This : AddIn_Type)
     return Pointer_To_AddIn;

   procedure Attach (This    : in out AddIn_Type;
                     Pointer : in     Pointer_To_AddIn);

   function Get_Description
     (This   : AddIn_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Description
     (This   : AddIn_Type;
      lpbstr : GNATCOM.Types.BSTR;
      Free   : Boolean := True);

   function Get_VBE
     (This   : AddIn_Type)
     return Pointer_To_VBE;

   function Get_Collection
     (This      : AddIn_Type)
     return Pointer_To_uAddIns;

   function Get_ProgId
     (This   : AddIn_Type)
     return GNATCOM.Types.BSTR;

   function Get_Guid
     (This   : AddIn_Type)
     return GNATCOM.Types.BSTR;

   function Get_Connect
     (This       : AddIn_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Connect
     (This       : AddIn_Type;
      lpfConnect : GNATCOM.Types.VARIANT_BOOL);

   function Get_Object
     (This    : AddIn_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure Put_Object
     (This    : AddIn_Type;
      lppdisp : GNATCOM.Types.Pointer_To_IDispatch);

end winword.AddIn_Interface;

