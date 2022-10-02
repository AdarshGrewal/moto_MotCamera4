.class public Lcom/motorola/patternlibrary/api/DropDownGalleryView$1;
.super Ljava/lang/Object;
.source "DropDownGalleryView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/patternlibrary/api/DropDownGalleryView;


# direct methods
.method public constructor <init>(Lcom/motorola/patternlibrary/api/DropDownGalleryView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView$1;->this$0:Lcom/motorola/patternlibrary/api/DropDownGalleryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView$1;->this$0:Lcom/motorola/patternlibrary/api/DropDownGalleryView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
