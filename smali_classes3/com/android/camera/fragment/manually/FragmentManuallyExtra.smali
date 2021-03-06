.class public Lcom/android/camera/fragment/manually/FragmentManuallyExtra;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentManuallyExtra.java"


# static fields
.field public static final FRAGMENT_INFO:I = 0xfe


# instance fields
.field private mCurrentTitle:I

.field private mData:Lcom/android/camera/data/data/ComponentData;

.field private mExtraList:Landroid/support/v7/widget/RecyclerView;

.field private mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

.field private mFragmentManually:Lcom/android/camera/fragment/manually/FragmentManually;

.field private mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

.field private mIsAnimateIng:Z

.field private mIsRecording:Z

.field private mLineView:Landroid/view/View;

.field private mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

.field private mNeedAnimation:Z

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mCurrentTitle:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mIsAnimateIng:Z

    return p1
.end method

.method private adjustViewBackground(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mIsRecording:Z

    if-eqz p0, :cond_0

    const p0, 0x7f06005a

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f06002c

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const p0, 0x7f06002e

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private initAdapter(Lcom/android/camera/data/data/ComponentData;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initSlideFocusView(Lcom/android/camera/data/data/ComponentData;)V

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initLensRecyclerView(Lcom/android/camera/data/data/ComponentData;)V

    goto :goto_0

    .line 4
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initWBRecyclerView(Lcom/android/camera/data/data/ComponentData;)V

    goto :goto_0

    .line 5
    :sswitch_3
    invoke-static {}, Lcom/mi/config/b;->sm()Z

    move-result v0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initHorizontalListView(Lcom/android/camera/data/data/ComponentData;Z)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0f02f6 -> :sswitch_3
        0x7f0f0317 -> :sswitch_3
        0x7f0f039a -> :sswitch_2
        0x7f0f03aa -> :sswitch_1
        0x7f0f03c6 -> :sswitch_3
        0x7f0f03d7 -> :sswitch_0
    .end sparse-switch
.end method

.method private initHorizontalListView(Lcom/android/camera/data/data/ComponentData;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v0

    .line 5
    new-instance v1, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v3, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    invoke-direct {v1, p1, v2, p2, v3}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;IZLcom/android/camera/fragment/manually/ManuallyListener;)V

    const p1, 0x7f0f0317

    if-ne v0, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/HorizontalListView;->setMaxVisibleItemCount(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/HorizontalListView;->setMaxVisibleItemCount(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    iget-boolean p2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mIsRecording:Z

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/HorizontalListView;->setIsRecording(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/HorizontalListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v1}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->getValuePosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setVisibility(I)V

    return-void
.end method

.method private initLensRecyclerView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    div-int v9, v0, v2

    .line 5
    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$4;

    iget-object v5, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mFragmentManually:Lcom/android/camera/fragment/manually/FragmentManually;

    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v8, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    move-object v3, v0

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$4;-><init>(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;Lcom/android/camera/fragment/BaseFragment;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;I)V

    .line 6
    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "manually_extra_list"

    invoke-direct {p1, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;->getValuePosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private initSlideFocusView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    .line 4
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFocusAdapter;

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v3, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFocusAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/HorizontalSlideView;->setOnItemSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/HorizontalSlideView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;)V

    .line 8
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 9
    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFocusAdapter;->mapFocusToIndex(I)I

    move-result p1

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->setSelection(I)V

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initWBRecyclerView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x40b00000    # 5.5f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v1, v2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    :cond_1
    move v6, v0

    .line 7
    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$3;

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v5, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$3;-><init>(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;I)V

    .line 8
    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "manually_extra_list"

    invoke-direct {p1, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;->getValuePosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 13
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public animateOut()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mIsAnimateIng:Z

    .line 2
    new-instance v0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$2;-><init>(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public getCurrentTitle()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mCurrentTitle:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xfe

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b003d

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0900e8

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f0900e7

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mLineView:Landroid/view/View;

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mLineView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const v0, 0x7f0900e9

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    const v0, 0x7f0900e6

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalSlideView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->adjustViewBackground(Landroid/view/View;I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mCurrentTitle:I

    return-void
.end method

.method public isAnimateIng()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mIsAnimateIng:Z

    return p0
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->adjustViewBackground(Landroid/view/View;I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-boolean p2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mNeedAnimation:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mNeedAnimation:Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mIsAnimateIng:Z

    .line 5
    new-instance p2, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    const/16 v0, 0x50

    invoke-direct {p2, p1, v0}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {p2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$1;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$1;-><init>(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public resetData(Lcom/android/camera/data/data/ComponentData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mCurrentTitle:I

    return-void
.end method

.method public setComponentData(Lcom/android/camera/data/data/ComponentData;IZLcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    .line 2
    iput p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 3
    iput-boolean p3, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mNeedAnimation:Z

    .line 4
    iput-object p4, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    return-void
.end method

.method public setmFragmentManually(Lcom/android/camera/fragment/manually/FragmentManually;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mFragmentManually:Lcom/android/camera/fragment/manually/FragmentManually;

    return-void
.end method

.method public showCustomWB(Lcom/android/camera/data/data/config/ComponentManuallyWB;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mTargetView:Landroid/view/View;

    .line 2
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;-><init>(Lcom/android/camera/data/data/config/ComponentManuallyWB;IZLcom/android/camera/fragment/manually/ManuallyListener;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/HorizontalListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->getValuePosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public updateData()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    return-void
.end method

.method public updateRecordingState(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mIsRecording:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mExtraListHorizontal:Lcom/android/camera/ui/HorizontalListView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalListView;->setIsRecording(Z)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->mLineView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
