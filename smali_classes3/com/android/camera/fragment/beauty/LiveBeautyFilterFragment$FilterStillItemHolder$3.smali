.class Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterStillItemHolder$3;
.super Ljava/lang/Object;
.source "LiveBeautyFilterFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterStillItemHolder;->selectAnim(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterStillItemHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterStillItemHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterStillItemHolder$3;->this$1:Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterStillItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method