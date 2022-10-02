.class public Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;
.super Ljava/lang/Object;
.source "TouchKeepOutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/TouchKeepOutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;
    }
.end annotation


# instance fields
.field public mRect:Landroid/graphics/Rect;

.field public mVisible:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;->mRect:Landroid/graphics/Rect;

    .line 3
    iput-boolean p2, p0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;->mVisible:Z

    return-void
.end method
