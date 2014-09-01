with GNATCOM.Dispinterface;

package winword.Scripts_Interface is

   type Scripts_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Scripts_Type);

   function Pointer (This : Scripts_Type)
     return Pointer_To_Scripts;

   procedure Attach (This    : in out Scripts_Type;
                     Pointer : in     Pointer_To_Scripts);

   function Get_Application
     (This    : Scripts_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : Scripts_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This   : Scripts_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This  : Scripts_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This     : Scripts_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Item
     (This  : Scripts_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return Pointer_To_Script;

   function Add
     (This       : Scripts_Type;
      Anchor     : GNATCOM.Types.Pointer_To_IDispatch;
      Location   : MsoScriptLocation;
      Language   : MsoScriptLanguage;
      Id         : GNATCOM.Types.BSTR;
      Extended   : GNATCOM.Types.BSTR;
      ScriptText : GNATCOM.Types.BSTR;
      Free       : Boolean := True)
     return Pointer_To_Script;

   procedure Delete
     (This : Scripts_Type);

end winword.Scripts_Interface;

