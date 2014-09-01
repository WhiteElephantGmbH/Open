with GNATCOM.Dispinterface;

package winword.RecentFile_Interface is

   type RecentFile_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out RecentFile_Type);

   function Pointer (This : RecentFile_Type)
     return Pointer_To_RecentFile;

   procedure Attach (This    : in out RecentFile_Type;
                     Pointer : in     Pointer_To_RecentFile);

   function Get_Application
     (This : RecentFile_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : RecentFile_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : RecentFile_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Name
     (This : RecentFile_Type)
     return GNATCOM.Types.BSTR;

   function Get_Index
     (This : RecentFile_Type)
     return Interfaces.C.long;

   function Get_ReadOnly
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ReadOnly
     (This : RecentFile_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Path
     (This : RecentFile_Type)
     return GNATCOM.Types.BSTR;

   function Open
     (This : RecentFile_Type)
     return Pointer_To_uDocument;

   procedure Delete
     (This : RecentFile_Type);

end winword.RecentFile_Interface;

