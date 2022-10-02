.class public final Lcom/motorola/camera/generated/callback/OnClickListener;
.super Ljava/lang/Object;
.source "OnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/generated/callback/OnClickListener$Listener;
    }
.end annotation


# instance fields
.field public final mListener:Lcom/motorola/camera/generated/callback/OnClickListener$Listener;

.field public final mSourceId:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/generated/callback/OnClickListener$Listener;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/generated/callback/OnClickListener;->mListener:Lcom/motorola/camera/generated/callback/OnClickListener$Listener;

    .line 3
    iput p2, p0, Lcom/motorola/camera/generated/callback/OnClickListener;->mSourceId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/generated/callback/OnClickListener;->mListener:Lcom/motorola/camera/generated/callback/OnClickListener$Listener;

    iget p0, p0, Lcom/motorola/camera/generated/callback/OnClickListener;->mSourceId:I

    invoke-interface {v0, p0, p1}, Lcom/motorola/camera/generated/callback/OnClickListener$Listener;->_internalCallbackOnClick(ILandroid/view/View;)V

    return-void
.end method
