.class public Lcom/motorola/camera/Camera$5;
.super Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/Camera;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/Camera;

.field public final synthetic val$finalBundle:Landroid/os/Bundle;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Camera;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/Camera$5;->this$0:Lcom/motorola/camera/Camera;

    iput-object p2, p0, Lcom/motorola/camera/Camera$5;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/motorola/camera/Camera$5;->val$finalBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/Camera$5;->this$0:Lcom/motorola/camera/Camera;

    iget-object v1, p0, Lcom/motorola/camera/Camera$5;->val$intent:Landroid/content/Intent;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/Camera$5;->val$finalBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
