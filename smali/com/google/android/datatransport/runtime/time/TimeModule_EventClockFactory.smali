.class public final Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;
.super Ljava/lang/Object;
.source "TimeModule_EventClockFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory$InstanceHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lcom/google/android/datatransport/runtime/time/WallTimeClock;

    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/time/WallTimeClock;-><init>()V

    return-object p0
.end method
