.class public Lorg/taptwo/android/widget/ViewFlow;
.super Landroid/widget/AdapterView;
.source "ViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;,
        Lorg/taptwo/android/widget/ViewFlow$LazyInit;,
        Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;,
        Lorg/taptwo/android/widget/ViewFlow$ViewSwitchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_SCREEN:I = -0x1

.field private static final SNAP_VELOCITY:I = 0x3e8

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mCurrentAdapterIndex:I

.field private mCurrentBufferIndex:I

.field private mCurrentScreen:I

.field private mDataSetObserver:Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;

.field private mFirstLayout:Z

.field private mIndicator:Lorg/taptwo/android/widget/FlowIndicator;

.field private mIndicatorCount:I

.field private mLastMotionX:F

.field private mLastOrientation:I

.field private mLastScrollDirection:I

.field private mLazyInit:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lorg/taptwo/android/widget/ViewFlow$LazyInit;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mRecycledViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScroller:Landroid/widget/Scroller;

.field private mSideBuffer:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewInitializeListener:Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;

.field private mViewSwitchListener:Lorg/taptwo/android/widget/ViewFlow$ViewSwitchListener;

.field private orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 115
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mSideBuffer:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    .line 67
    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mNextScreen:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mFirstLayout:Z

    .line 71
    const-class v0, Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    .line 76
    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLastOrientation:I

    .line 79
    new-instance v0, Lorg/taptwo/android/widget/ViewFlow$1;

    invoke-direct {v0, p0}, Lorg/taptwo/android/widget/ViewFlow$1;-><init>(Lorg/taptwo/android/widget/ViewFlow;)V

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 116
    const/4 v0, 0x3

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mSideBuffer:I

    .line 117
    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->init()V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "sideBuffer"

    .prologue
    const/4 v1, -0x1

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mSideBuffer:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    .line 67
    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mNextScreen:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mFirstLayout:Z

    .line 71
    const-class v0, Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    .line 76
    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLastOrientation:I

    .line 79
    new-instance v0, Lorg/taptwo/android/widget/ViewFlow$1;

    invoke-direct {v0, p0}, Lorg/taptwo/android/widget/ViewFlow$1;-><init>(Lorg/taptwo/android/widget/ViewFlow;)V

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 122
    iput p2, p0, Lorg/taptwo/android/widget/ViewFlow;->mSideBuffer:I

    .line 123
    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->init()V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v1, 0x2

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mSideBuffer:I

    .line 62
    iput v3, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    .line 67
    iput v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mNextScreen:I

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mFirstLayout:Z

    .line 71
    const-class v1, Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    .line 76
    iput v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mLastOrientation:I

    .line 79
    new-instance v1, Lorg/taptwo/android/widget/ViewFlow$1;

    invoke-direct {v1, p0}, Lorg/taptwo/android/widget/ViewFlow$1;-><init>(Lorg/taptwo/android/widget/ViewFlow;)V

    iput-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 128
    sget-object v1, Lorg/taptwo/android/widget/viewflow/R$styleable;->ViewFlow:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    .local v0, styledAttrs:Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mSideBuffer:I

    .line 131
    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->init()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lorg/taptwo/android/widget/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/taptwo/android/widget/ViewFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    return v0
.end method

.method static synthetic access$102(Lorg/taptwo/android/widget/ViewFlow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    return p1
.end method

.method static synthetic access$200(Lorg/taptwo/android/widget/ViewFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    return v0
.end method

.method static synthetic access$300(Lorg/taptwo/android/widget/ViewFlow;)Landroid/widget/Adapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic access$400(Lorg/taptwo/android/widget/ViewFlow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->resetFocus()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 135
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    .line 136
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    .line 137
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    .line 138
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 140
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchSlop:I

    .line 141
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mMaximumVelocity:I

    .line 142
    return-void
.end method

.method private initializeView(F)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 406
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 407
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v1, Lorg/taptwo/android/widget/ViewFlow$LazyInit;->RIGHT:Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v1, Lorg/taptwo/android/widget/ViewFlow$LazyInit;->RIGHT:Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 409
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 410
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mViewInitializeListener:Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v0, v2}, Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;->onViewLazyInitialize(Landroid/view/View;I)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v1, Lorg/taptwo/android/widget/ViewFlow$LazyInit;->LEFT:Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v1, Lorg/taptwo/android/widget/ViewFlow$LazyInit;->LEFT:Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 415
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    if-lez v0, :cond_0

    .line 416
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mViewInitializeListener:Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v0, v2}, Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;->onViewLazyInitialize(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private logBuffer()V
    .locals 3

    .prologue
    .line 745
    const-string v0, "viewflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of mLoadedViews: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Size of mRecycledViews: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string v0, "viewflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexInAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", IndexInBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void
.end method

.method private makeAndAddView(IZ)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "addToEnd"

    .prologue
    .line 710
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getRecycledView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/taptwo/android/widget/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private makeAndAddView(IZLandroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "addToEnd"
    .parameter "convertView"

    .prologue
    .line 714
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1, p1, p3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 715
    .local v0, view:Landroid/view/View;
    if-eq v0, p3, :cond_0

    .line 716
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_0
    if-ne v0, p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, p2, v1}, Lorg/taptwo/android/widget/ViewFlow;->setupChild(Landroid/view/View;ZZ)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postViewSwitched(I)V
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    .line 640
    if-nez p1, :cond_0

    .line 692
    :goto_0
    return-void

    .line 643
    :cond_0
    if-lez p1, :cond_5

    .line 644
    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    .line 645
    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    .line 646
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v2, Lorg/taptwo/android/widget/ViewFlow$LazyInit;->LEFT:Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 647
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v2, Lorg/taptwo/android/widget/ViewFlow$LazyInit;->RIGHT:Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 650
    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mSideBuffer:I

    if-le v1, v2, :cond_1

    .line 651
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lorg/taptwo/android/widget/ViewFlow;->recycleView(Landroid/view/View;)V

    .line 652
    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    .line 656
    :cond_1
    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mSideBuffer:I

    add-int v0, v1, v2

    .line 657
    .local v0, newBufferIndex:I
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 658
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v3}, Lorg/taptwo/android/widget/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 680
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->requestLayout()V

    .line 681
    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    invoke-direct {p0, v1, v3}, Lorg/taptwo/android/widget/ViewFlow;->setVisibleView(IZ)V

    .line 682
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mIndicator:Lorg/taptwo/android/widget/FlowIndicator;

    if-eqz v1, :cond_3

    .line 683
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mIndicator:Lorg/taptwo/android/widget/FlowIndicator;

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v3, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v2, v1, v3}, Lorg/taptwo/android/widget/FlowIndicator;->onSwitched(Landroid/view/View;I)V

    .line 686
    :cond_3
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mViewSwitchListener:Lorg/taptwo/android/widget/ViewFlow$ViewSwitchListener;

    if-eqz v1, :cond_4

    .line 687
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mViewSwitchListener:Lorg/taptwo/android/widget/ViewFlow$ViewSwitchListener;

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v3, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v2, v1, v3}, Lorg/taptwo/android/widget/ViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    .line 691
    :cond_4
    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->logBuffer()V

    goto :goto_0

    .line 661
    .end local v0           #newBufferIndex:I
    :cond_5
    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    .line 662
    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    .line 663
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v2, Lorg/taptwo/android/widget/ViewFlow$LazyInit;->LEFT:Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v2, Lorg/taptwo/android/widget/ViewFlow$LazyInit;->RIGHT:Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 667
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mSideBuffer:I

    if-le v1, v2, :cond_6

    .line 668
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lorg/taptwo/android/widget/ViewFlow;->recycleView(Landroid/view/View;)V

    .line 672
    :cond_6
    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mSideBuffer:I

    sub-int v0, v1, v2

    .line 673
    .restart local v0       #newBufferIndex:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 674
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/taptwo/android/widget/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 675
    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    goto/16 :goto_1
.end method

.method private resetFocus()V
    .locals 4

    .prologue
    .line 620
    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->logBuffer()V

    .line 621
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->recycleViews()V

    .line 622
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->removeAllViewsInLayout()V

    .line 623
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    const-class v2, Lorg/taptwo/android/widget/ViewFlow$LazyInit;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 625
    const/4 v1, 0x0

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lorg/taptwo/android/widget/ViewFlow;->mSideBuffer:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lorg/taptwo/android/widget/ViewFlow;->mSideBuffer:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 628
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/taptwo/android/widget/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 629
    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    if-ne v0, v1, :cond_0

    .line 630
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    .line 631
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mViewInitializeListener:Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;

    if-eqz v1, :cond_0

    .line 632
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mViewInitializeListener:Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v2, v1, v3}, Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;->onViewLazyInitialize(Landroid/view/View;I)V

    .line 627
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_1
    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->logBuffer()V

    .line 636
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->requestLayout()V

    .line 637
    return-void
.end method

.method private setVisibleView(IZ)V
    .locals 6
    .parameter "indexInBuffer"
    .parameter "uiThread"

    .prologue
    const/4 v4, 0x0

    .line 486
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentScreen:I

    .line 488
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int v3, v0, v1

    .line 489
    .local v3, dx:I
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 491
    if-nez v3, :cond_0

    .line 492
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/taptwo/android/widget/ViewFlow;->onScrollChanged(IIII)V

    .line 493
    :cond_0
    if-eqz p2, :cond_1

    .line 494
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->invalidate()V

    .line 497
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->postInvalidate()V

    goto :goto_0
.end method

.method private setupChild(Landroid/view/View;ZZ)Landroid/view/View;
    .locals 4
    .parameter "child"
    .parameter "addToEnd"
    .parameter "recycle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 695
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 697
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 698
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .end local v0           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x2

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 702
    .restart local v0       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-eqz p3, :cond_2

    .line 703
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lorg/taptwo/android/widget/ViewFlow;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 706
    :goto_1
    return-object p1

    :cond_1
    move v1, v2

    .line 703
    goto :goto_0

    .line 705
    :cond_2
    if-eqz p2, :cond_3

    :goto_2
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/taptwo/android/widget/ViewFlow;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private snapToDestination()V
    .locals 4

    .prologue
    .line 440
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v0

    .line 441
    .local v0, screenWidth:I
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 444
    .local v1, whichScreen:I
    invoke-direct {p0, v1}, Lorg/taptwo/android/widget/ViewFlow;->snapToScreen(I)V

    .line 445
    return-void
.end method

.method private snapToScreen(I)V
    .locals 7
    .parameter "whichScreen"

    .prologue
    const/4 v2, 0x0

    .line 448
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentScreen:I

    sub-int v0, p1, v0

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mLastScrollDirection:I

    .line 449
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 454
    iput p1, p0, Lorg/taptwo/android/widget/ViewFlow;->mNextScreen:I

    .line 456
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v0

    mul-int v6, p1, v0

    .line 457
    .local v6, newX:I
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getScrollX()I

    move-result v0

    sub-int v3, v6, v0

    .line 458
    .local v3, delta:I
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 459
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 464
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/taptwo/android/widget/ViewFlow;->scrollTo(II)V

    .line 466
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->postInvalidate()V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mNextScreen:I

    if-eq v0, v3, :cond_0

    .line 472
    const/4 v0, 0x0

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mNextScreen:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentScreen:I

    .line 474
    iput v3, p0, Lorg/taptwo/android/widget/ViewFlow;->mNextScreen:I

    .line 475
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mLastScrollDirection:I

    invoke-direct {p0, v0}, Lorg/taptwo/android/widget/ViewFlow;->postViewSwitched(I)V

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getIndicatorCount()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mIndicatorCount:I

    return v0
.end method

.method protected getRecycledView()Landroid/view/View;
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 544
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewsCount()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 145
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 146
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mLastOrientation:I

    .line 147
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/16 v11, 0x3e8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 210
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v9

    .line 213
    :cond_1
    iget-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 214
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 216
    :cond_2
    iget-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 219
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 221
    .local v6, x:F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    iget-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_3

    .line 228
    iget-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->abortAnimation()V

    .line 232
    :cond_3
    iput v6, p0, Lorg/taptwo/android/widget/ViewFlow;->mLastMotionX:F

    .line 234
    iget-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_4

    move v8, v9

    :cond_4
    iput v8, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    goto :goto_0

    .line 240
    :pswitch_1
    iget v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mLastMotionX:F

    sub-float/2addr v10, v6

    float-to-int v2, v10

    .line 242
    .local v2, deltaX:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchSlop:I

    if-le v10, v11, :cond_7

    move v7, v8

    .line 244
    .local v7, xMoved:Z
    :goto_1
    if-eqz v7, :cond_5

    .line 246
    iput v8, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    .line 248
    iget-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mViewInitializeListener:Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;

    if-eqz v10, :cond_5

    .line 249
    int-to-float v10, v2

    invoke-direct {p0, v10}, Lorg/taptwo/android/widget/ViewFlow;->initializeView(F)V

    .line 252
    :cond_5
    iget v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    if-ne v10, v8, :cond_0

    .line 255
    iput v6, p0, Lorg/taptwo/android/widget/ViewFlow;->mLastMotionX:F

    .line 257
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getScrollX()I

    move-result v3

    .line 258
    .local v3, scrollX:I
    if-gez v2, :cond_8

    .line 259
    if-lez v3, :cond_6

    .line 260
    neg-int v10, v3

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v10, v9}, Lorg/taptwo/android/widget/ViewFlow;->scrollBy(II)V

    :cond_6
    :goto_2
    move v9, v8

    .line 270
    goto :goto_0

    .end local v3           #scrollX:I
    .end local v7           #xMoved:Z
    :cond_7
    move v7, v9

    .line 242
    goto :goto_1

    .line 262
    .restart local v3       #scrollX:I
    .restart local v7       #xMoved:Z
    :cond_8
    if-lez v2, :cond_6

    .line 263
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Lorg/taptwo/android/widget/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v11

    sub-int v1, v10, v11

    .line 266
    .local v1, availableToScroll:I
    if-lez v1, :cond_6

    .line 267
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {p0, v10, v9}, Lorg/taptwo/android/widget/ViewFlow;->scrollBy(II)V

    goto :goto_2

    .line 275
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    .end local v3           #scrollX:I
    .end local v7           #xMoved:Z
    :pswitch_2
    iget v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    if-ne v10, v8, :cond_9

    .line 276
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 277
    .local v4, velocityTracker:Landroid/view/VelocityTracker;
    iget v8, p0, Lorg/taptwo/android/widget/ViewFlow;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v4, v11, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 278
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v5, v8

    .line 280
    .local v5, velocityX:I
    if-le v5, v11, :cond_a

    iget v8, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentScreen:I

    if-lez v8, :cond_a

    .line 282
    iget v8, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v8}, Lorg/taptwo/android/widget/ViewFlow;->snapToScreen(I)V

    .line 291
    :goto_3
    iget-object v8, p0, Lorg/taptwo/android/widget/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_9

    .line 292
    iget-object v8, p0, Lorg/taptwo/android/widget/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 293
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/taptwo/android/widget/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 297
    .end local v4           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v5           #velocityX:I
    :cond_9
    iput v9, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    goto/16 :goto_0

    .line 283
    .restart local v4       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v5       #velocityX:I
    :cond_a
    const/16 v8, -0x3e8

    if-ge v5, v8, :cond_b

    iget v8, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_b

    .line 286
    iget v8, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lorg/taptwo/android/widget/ViewFlow;->snapToScreen(I)V

    goto :goto_3

    .line 288
    :cond_b
    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->snapToDestination()V

    goto :goto_3

    .line 301
    .end local v4           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v5           #velocityX:I
    :pswitch_3
    iput v9, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    goto/16 :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 196
    .local v1, childLeft:I
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v3

    .line 197
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 198
    invoke-virtual {p0, v4}, Lorg/taptwo/android/widget/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 201
    .local v2, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 203
    add-int/2addr v1, v2

    .line 197
    .end local v2           #childWidth:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 206
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v2, 0x4000

    const/4 v1, 0x0

    .line 165
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 167
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 168
    .local v9, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 169
    .local v10, widthMode:I
    if-eq v10, v2, :cond_0

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 175
    .local v7, heightMode:I
    if-eq v7, v2, :cond_1

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v6

    .line 182
    .local v6, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_2

    .line 183
    invoke-virtual {p0, v8}, Lorg/taptwo/android/widget/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 182
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 186
    :cond_2
    iget-boolean v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mFirstLayout:Z

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentScreen:I

    mul-int v3, v2, v9

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 188
    iput-boolean v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mFirstLayout:Z

    .line 190
    :cond_3
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 5
    .parameter "h"
    .parameter "v"
    .parameter "oldh"
    .parameter "oldv"

    .prologue
    .line 423
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onScrollChanged(IIII)V

    .line 424
    iget-object v3, p0, Lorg/taptwo/android/widget/ViewFlow;->mIndicator:Lorg/taptwo/android/widget/FlowIndicator;

    if-eqz v3, :cond_0

    .line 430
    iget v3, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    iget v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    add-int v0, p1, v3

    .line 432
    .local v0, hPerceived:I
    const/16 v1, 0x140

    .line 433
    .local v1, indicatorWidth:I
    iget v3, p0, Lorg/taptwo/android/widget/ViewFlow;->mIndicatorCount:I

    mul-int v2, v1, v3

    .line 434
    .local v2, widthLimit:I
    rem-int/2addr v0, v2

    .line 435
    iget-object v3, p0, Lorg/taptwo/android/widget/ViewFlow;->mIndicator:Lorg/taptwo/android/widget/FlowIndicator;

    invoke-interface {v3, v0, p2, p3, p4}, Lorg/taptwo/android/widget/FlowIndicator;->onScrolled(IIII)V

    .line 437
    .end local v0           #hPerceived:I
    .end local v1           #indicatorWidth:I
    .end local v2           #widthLimit:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/16 v11, 0x3e8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 308
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v10

    if-nez v10, :cond_1

    move v9, v8

    .line 402
    :cond_0
    :goto_0
    return v9

    .line 311
    :cond_1
    iget-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 312
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 314
    :cond_2
    iget-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 317
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 319
    .local v6, x:F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 325
    :pswitch_0
    iget-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_3

    .line 326
    iget-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->abortAnimation()V

    .line 330
    :cond_3
    iput v6, p0, Lorg/taptwo/android/widget/ViewFlow;->mLastMotionX:F

    .line 332
    iget-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_1
    iput v8, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    goto :goto_0

    :cond_4
    move v8, v9

    goto :goto_1

    .line 338
    :pswitch_1
    iget v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mLastMotionX:F

    sub-float/2addr v10, v6

    float-to-int v2, v10

    .line 340
    .local v2, deltaX:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchSlop:I

    if-le v10, v11, :cond_6

    move v7, v9

    .line 342
    .local v7, xMoved:Z
    :goto_2
    if-eqz v7, :cond_5

    .line 344
    iput v9, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    .line 346
    iget-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mViewInitializeListener:Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;

    if-eqz v10, :cond_5

    .line 347
    int-to-float v10, v2

    invoke-direct {p0, v10}, Lorg/taptwo/android/widget/ViewFlow;->initializeView(F)V

    .line 350
    :cond_5
    iget v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    if-ne v10, v9, :cond_0

    .line 353
    iput v6, p0, Lorg/taptwo/android/widget/ViewFlow;->mLastMotionX:F

    .line 355
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getScrollX()I

    move-result v3

    .line 356
    .local v3, scrollX:I
    if-gez v2, :cond_7

    .line 357
    if-lez v3, :cond_0

    .line 358
    neg-int v10, v3

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v10, v8}, Lorg/taptwo/android/widget/ViewFlow;->scrollBy(II)V

    goto :goto_0

    .end local v3           #scrollX:I
    .end local v7           #xMoved:Z
    :cond_6
    move v7, v8

    .line 340
    goto :goto_2

    .line 360
    .restart local v3       #scrollX:I
    .restart local v7       #xMoved:Z
    :cond_7
    if-lez v2, :cond_0

    .line 361
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Lorg/taptwo/android/widget/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v11

    sub-int v1, v10, v11

    .line 364
    .local v1, availableToScroll:I
    if-lez v1, :cond_0

    .line 365
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {p0, v10, v8}, Lorg/taptwo/android/widget/ViewFlow;->scrollBy(II)V

    goto/16 :goto_0

    .line 373
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    .end local v3           #scrollX:I
    .end local v7           #xMoved:Z
    :pswitch_2
    iget v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    if-ne v10, v9, :cond_8

    .line 374
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 375
    .local v4, velocityTracker:Landroid/view/VelocityTracker;
    iget v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v4, v11, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 376
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    float-to-int v5, v10

    .line 378
    .local v5, velocityX:I
    if-le v5, v11, :cond_9

    iget v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentScreen:I

    if-lez v10, :cond_9

    .line 380
    iget v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v10, v10, -0x1

    invoke-direct {p0, v10}, Lorg/taptwo/android/widget/ViewFlow;->snapToScreen(I)V

    .line 389
    :goto_3
    iget-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_8

    .line 390
    iget-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 391
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 395
    .end local v4           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v5           #velocityX:I
    :cond_8
    iput v8, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    goto/16 :goto_0

    .line 381
    .restart local v4       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v5       #velocityX:I
    :cond_9
    const/16 v10, -0x3e8

    if-ge v5, v10, :cond_a

    iget v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_a

    .line 384
    iget v10, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {p0, v10}, Lorg/taptwo/android/widget/ViewFlow;->snapToScreen(I)V

    goto :goto_3

    .line 386
    :cond_a
    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->snapToDestination()V

    goto :goto_3

    .line 399
    .end local v4           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v5           #velocityX:I
    :pswitch_3
    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->snapToDestination()V

    .line 400
    iput v8, p0, Lorg/taptwo/android/widget/ViewFlow;->mTouchState:I

    goto/16 :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected recycleView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 569
    if-nez p1, :cond_0

    .line 573
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-virtual {p0, p1}, Lorg/taptwo/android/widget/ViewFlow;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected recycleViews()V
    .locals 1

    .prologue
    .line 564
    :goto_0
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/taptwo/android/widget/ViewFlow;->recycleView(Landroid/view/View;)V

    goto :goto_0

    .line 566
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/taptwo/android/widget/ViewFlow;->setAdapter(Landroid/widget/Adapter;I)V

    .line 522
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;I)V
    .locals 2
    .parameter "adapter"
    .parameter "initialPosition"

    .prologue
    .line 525
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mDataSetObserver:Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 529
    :cond_0
    iput-object p1, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    .line 531
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 532
    new-instance v0, Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;-><init>(Lorg/taptwo/android/widget/ViewFlow;)V

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mDataSetObserver:Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;

    .line 533
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->mDataSetObserver:Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 536
    :cond_1
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 540
    :cond_2
    :goto_0
    return-void

    .line 539
    :cond_3
    invoke-virtual {p0, p2}, Lorg/taptwo/android/widget/ViewFlow;->setSelection(I)V

    goto :goto_0
.end method

.method public setFlowIndicator(Lorg/taptwo/android/widget/FlowIndicator;)V
    .locals 1
    .parameter "flowIndicator"

    .prologue
    .line 559
    iput-object p1, p0, Lorg/taptwo/android/widget/ViewFlow;->mIndicator:Lorg/taptwo/android/widget/FlowIndicator;

    .line 560
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->mIndicator:Lorg/taptwo/android/widget/FlowIndicator;

    invoke-interface {v0, p0}, Lorg/taptwo/android/widget/FlowIndicator;->setViewFlow(Lorg/taptwo/android/widget/ViewFlow;)V

    .line 561
    return-void
.end method

.method public setIndicatorCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 152
    iput p1, p0, Lorg/taptwo/android/widget/ViewFlow;->mIndicatorCount:I

    .line 153
    return-void
.end method

.method public setOnViewLazyInitializeListener(Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 511
    iput-object p1, p0, Lorg/taptwo/android/widget/ViewFlow;->mViewInitializeListener:Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;

    .line 512
    return-void
.end method

.method public setOnViewSwitchListener(Lorg/taptwo/android/widget/ViewFlow$ViewSwitchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 507
    iput-object p1, p0, Lorg/taptwo/android/widget/ViewFlow;->mViewSwitchListener:Lorg/taptwo/android/widget/ViewFlow$ViewSwitchListener;

    .line 508
    return-void
.end method

.method public setSelection(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 581
    const/4 v4, -0x1

    iput v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mNextScreen:I

    .line 582
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 583
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-nez v4, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-static {p1, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 587
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 589
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->recycleViews()V

    .line 591
    invoke-direct {p0, p1, v7}, Lorg/taptwo/android/widget/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v0

    .line 592
    .local v0, currentView:Landroid/view/View;
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 594
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mViewInitializeListener:Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;

    if-eqz v4, :cond_2

    .line 595
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mViewInitializeListener:Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;

    invoke-interface {v4, v0, p1}, Lorg/taptwo/android/widget/ViewFlow$ViewLazyInitializeListener;->onViewLazyInitialize(Landroid/view/View;I)V

    .line 597
    :cond_2
    const/4 v2, 0x1

    .local v2, offset:I
    :goto_1
    iget v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mSideBuffer:I

    sub-int/2addr v4, v2

    if-ltz v4, :cond_5

    .line 598
    sub-int v1, p1, v2

    .line 599
    .local v1, leftIndex:I
    add-int v3, p1, v2

    .line 600
    .local v3, rightIndex:I
    if-ltz v1, :cond_3

    .line 601
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v1, v6}, Lorg/taptwo/android/widget/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 602
    :cond_3
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 603
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v3, v7}, Lorg/taptwo/android/widget/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 597
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 606
    .end local v1           #leftIndex:I
    .end local v3           #rightIndex:I
    :cond_5
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    .line 607
    iput p1, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    .line 609
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->requestLayout()V

    .line 610
    iget v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I

    invoke-direct {p0, v4, v6}, Lorg/taptwo/android/widget/ViewFlow;->setVisibleView(IZ)V

    .line 611
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mIndicator:Lorg/taptwo/android/widget/FlowIndicator;

    if-eqz v4, :cond_6

    .line 612
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mIndicator:Lorg/taptwo/android/widget/FlowIndicator;

    iget v5, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v4, v0, v5}, Lorg/taptwo/android/widget/FlowIndicator;->onSwitched(Landroid/view/View;I)V

    .line 614
    :cond_6
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mViewSwitchListener:Lorg/taptwo/android/widget/ViewFlow$ViewSwitchListener;

    if-eqz v4, :cond_0

    .line 615
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->mViewSwitchListener:Lorg/taptwo/android/widget/ViewFlow$ViewSwitchListener;

    iget v5, p0, Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v4, v0, v5}, Lorg/taptwo/android/widget/ViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    goto :goto_0
.end method
