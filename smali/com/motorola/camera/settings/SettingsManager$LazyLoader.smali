.class public final Lcom/motorola/camera/settings/SettingsManager$LazyLoader;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/settings/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/settings/SettingsManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/settings/SettingsManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;-><init>(Lcom/motorola/camera/settings/SettingsManager$1;)V

    sput-object v0, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    return-void
.end method
