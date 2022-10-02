.class public Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;
.super Ljava/lang/Object;
.source "PostCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/PostCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewFrame"
.end annotation


# instance fields
.field public mBuffer:Ljava/nio/Buffer;

.field public mSize:Landroid/graphics/Point;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
