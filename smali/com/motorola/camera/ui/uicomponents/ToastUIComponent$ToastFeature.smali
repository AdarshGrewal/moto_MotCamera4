.class public Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;
.super Ljava/lang/Object;
.source "ToastUIComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToastFeature"
.end annotation


# instance fields
.field public mAlignment:I

.field public mAutoHide:Z

.field public mContentDescription:Ljava/lang/String;

.field public mIgnoreVisibilityRules:Z

.field public mLandscapeAlignCenter:Z

.field public mText:Ljava/lang/String;

.field public mTextDescriptionStr:Ljava/lang/String;

.field public mTextResource:I

.field public mToastDuration:I

.field public mToastStyle:I

.field public mVisible:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mVisible:Z

    .line 3
    iput-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAutoHide:Z

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mText:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextResource:I

    .line 6
    iput p5, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastDuration:I

    .line 7
    iput p6, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAlignment:I

    .line 8
    iput-boolean p7, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mLandscapeAlignCenter:Z

    .line 9
    iput p8, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastStyle:I

    .line 10
    iput-object p9, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextDescriptionStr:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mContentDescription:Ljava/lang/String;

    .line 12
    iput-boolean p11, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mIgnoreVisibilityRules:Z

    return-void
.end method
