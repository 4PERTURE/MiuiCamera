.class public abstract Lcom/android/camera/network/net/base/VolleyRequest;
.super Lcom/android/camera/network/net/base/BaseRequest;
.source "VolleyRequest.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/network/net/base/BaseRequest<",
        "TE;>;",
        "Lcom/android/volley/Response$Listener<",
        "TT;>;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private mRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/network/net/base/BaseRequest;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private releaseSyncExecuteLock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/network/net/base/VolleyRequest;->releaseSyncExecuteLock()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/network/net/base/BaseRequest;->setOnResponseListener(Lcom/android/camera/network/net/base/ResponseListener;)Lcom/android/camera/network/net/base/BaseRequest;

    .line 3
    iget-object p0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/volley/Request;->cancel()V

    :cond_0
    return-void
.end method

.method protected abstract createVolleyRequest(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation
.end method

.method public execute()V
    .locals 5

    .line 1
    invoke-virtual {p0, p0, p0}, Lcom/android/camera/network/net/base/VolleyRequest;->createVolleyRequest(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    .line 2
    iget-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v2, 0x2710

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 4
    iget-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {p0}, Lcom/android/camera/network/net/base/BaseRequest;->isUseCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/network/net/base/BaseRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1, v0}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/network/net/HttpManager;->getInstance()Lcom/android/camera/network/net/HttpManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0, p0}, Lcom/android/camera/network/net/HttpManager;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public executeSync()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/network/net/base/RequestError;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/network/threadpool/ThreadManager;->getRequestThreadLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/network/net/base/VolleyRequest;->execute()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mRequestError:Lcom/android/camera/network/net/base/RequestError;

    if-nez v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mResponse:[Ljava/lang/Object;

    return-object p0

    .line 8
    :cond_0
    throw v0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "executeSync could not call on main thread or request thread."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheExpires:J

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/network/net/base/BaseRequest;->onRequestError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract handleResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/network/net/base/ErrorCode;->NET_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    .line 2
    instance-of v1, p1, Lcom/android/camera/network/net/base/RequestError;

    if-eqz v1, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/android/camera/network/net/base/RequestError;

    invoke-virtual {v0}, Lcom/android/camera/network/net/base/RequestError;->getErrorCode()Lcom/android/camera/network/net/base/ErrorCode;

    move-result-object v0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/network/net/base/VolleyRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/network/net/base/VolleyRequest;->releaseSyncExecuteLock()V

    return-void
.end method

.method public final onResponse(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/network/net/base/VolleyRequest;->handleResponse(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/network/net/base/VolleyRequest;->releaseSyncExecuteLock()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    instance-of v0, p1, Lcom/android/camera/network/net/base/Cacheable;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/android/camera/network/net/base/Cacheable;

    .line 5
    iget-wide v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheExpires:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/android/camera/network/net/base/Cacheable;->isFromCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/network/net/HttpManager;->getInstance()Lcom/android/camera/network/net/HttpManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/camera/network/net/base/Cacheable;->getData()[B

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheExpires:J

    iget-wide v6, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheSoftTtl:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/network/net/HttpManager;->putToCache(Ljava/lang/String;[BJJ)V

    :cond_0
    return-void
.end method
