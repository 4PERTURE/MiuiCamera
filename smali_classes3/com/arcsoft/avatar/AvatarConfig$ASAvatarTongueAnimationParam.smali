.class public Lcom/arcsoft/avatar/AvatarConfig$ASAvatarTongueAnimationParam;
.super Ljava/lang/Object;
.source "AvatarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/avatar/AvatarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASAvatarTongueAnimationParam"
.end annotation


# instance fields
.field private fBackSlowLevel:F

.field private fLevel:F

.field private fMouthExpressionBak:F

.field private nTongueAnimationStatus:I

.field private nTongueStatus:I


# direct methods
.method public constructor <init>(IFFIF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarTongueAnimationParam;->nTongueStatus:I

    .line 3
    iput p2, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarTongueAnimationParam;->fLevel:F

    .line 4
    iput p3, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarTongueAnimationParam;->fBackSlowLevel:F

    .line 5
    iput p4, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarTongueAnimationParam;->nTongueAnimationStatus:I

    .line 6
    iput p5, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarTongueAnimationParam;->fMouthExpressionBak:F

    return-void
.end method
