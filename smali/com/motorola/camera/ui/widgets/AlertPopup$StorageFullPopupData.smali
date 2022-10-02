.class public Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;
.super Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;
.source "AlertPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/AlertPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageFullPopupData"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    if-nez p1, :cond_0

    const p1, 0x7f110127

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const p1, 0x7f110121

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    goto :goto_0

    :cond_0
    const v0, 0x7f110108

    .line 4
    iput v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    .line 5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1103f9

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-eq v2, p1, :cond_1

    const v1, 0x7f1103f8

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f110106

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 10
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageText:Ljava/lang/CharSequence;

    const p1, 0x7f110107

    .line 11
    sget-object v0, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData$$ExternalSyntheticLambda0;

    .line 12
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 13
    iput p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    :goto_0
    return-void
.end method
