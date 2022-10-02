.class public final Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;
.super Ljava/lang/Object;
.source "SettingSoundPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/SettingSoundPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/SettingSoundPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/SettingSoundPlayer;-><init>(Lcom/motorola/camera/ui/SettingSoundPlayer$1;)V

    sput-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    return-void
.end method
