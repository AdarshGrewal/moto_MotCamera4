.class public Lcom/motorola/camera/fragments/SettingDialogFragment$SettingTextWatcher;
.super Ljava/lang/Object;
.source "SettingDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fragments/SettingDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingTextWatcher"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fragments/SettingDialogFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/SettingDialogFragment;Lcom/motorola/camera/fragments/SettingDialogFragment$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$SettingTextWatcher;->this$0:Lcom/motorola/camera/fragments/SettingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$SettingTextWatcher;->this$0:Lcom/motorola/camera/fragments/SettingDialogFragment;

    iget-object p2, p2, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSupportedValues:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$SettingTextWatcher;->this$0:Lcom/motorola/camera/fragments/SettingDialogFragment;

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mValueList:Landroid/widget/ListView;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$SettingTextWatcher;->this$0:Lcom/motorola/camera/fragments/SettingDialogFragment;

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mValueList:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_0
    return-void
.end method
