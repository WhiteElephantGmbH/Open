with GNATCOM.Dispinterface;

package winword.RecentFile_Object is

   type RecentFile_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ReadOnly
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ReadOnly
     (This : RecentFile_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Path
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT;

   function Open
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : RecentFile_Type);

end winword.RecentFile_Object;

