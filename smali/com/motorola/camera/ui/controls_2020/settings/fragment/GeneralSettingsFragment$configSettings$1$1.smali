.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$1$1;
.super Ljava/lang/Object;
.source "GeneralSettingsFragment.kt"

# interfaces
.implements Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;


# instance fields
.field public final synthetic $this_apply:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$1$1;->$this_apply:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapseFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$1$1;->$this_apply:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-virtual {v0, p0}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->scrollToEnd(Landroidx/preference/PreferenceFragmentCompat;)V

    :cond_0
    return-void
.end method

.method public onExpandFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$1$1;->$this_apply:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-virtual {v0, p0}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->scrollToEnd(Landroidx/preference/PreferenceFragmentCompat;)V

    :cond_0
    return-void
.end method
