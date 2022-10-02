.class public final Lcom/motorola/camera/utility/ActivityUtilKt$launchGallery$1;
.super Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;
.source "ActivityUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/utility/ActivityUtilKt;->launchGallery(Landroid/app/Activity;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $bundle:Landroid/os/Bundle;

.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic $this_launchGallery:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/utility/ActivityUtilKt$launchGallery$1;->$this_launchGallery:Landroid/app/Activity;

    iput-object p2, p0, Lcom/motorola/camera/utility/ActivityUtilKt$launchGallery$1;->$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/motorola/camera/utility/ActivityUtilKt$launchGallery$1;->$bundle:Landroid/os/Bundle;

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/utility/ActivityUtilKt$launchGallery$1;->$this_launchGallery:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDismissSucceeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/utility/ActivityUtilKt$launchGallery$1;->$this_launchGallery:Landroid/app/Activity;

    iget-object v1, p0, Lcom/motorola/camera/utility/ActivityUtilKt$launchGallery$1;->$intent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/utility/ActivityUtilKt$launchGallery$1;->$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
