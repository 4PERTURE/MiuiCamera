.class Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2$1;
.super Ljava/lang/Object;
.source "FragmentLiveMusicPager.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->onResponse([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2$1;->this$1:Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;

    iput-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->setLiveMusicFirstRequestTime(J)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2$1;->this$1:Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;

    iget-object v0, v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2$1;->val$list:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$100(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Ljava/util/List;)V

    return-void
.end method
