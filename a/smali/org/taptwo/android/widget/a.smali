.class final Lorg/taptwo/android/widget/a;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lorg/taptwo/android/widget/CircleFlowIndicator;

.field private b:I

.field private c:Z


# direct methods
.method private constructor <init>(Lorg/taptwo/android/widget/CircleFlowIndicator;)V
    .locals 1

    iput-object p1, p0, Lorg/taptwo/android/widget/a;->a:Lorg/taptwo/android/widget/CircleFlowIndicator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/taptwo/android/widget/a;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/taptwo/android/widget/a;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/taptwo/android/widget/CircleFlowIndicator;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/taptwo/android/widget/a;-><init>(Lorg/taptwo/android/widget/CircleFlowIndicator;)V

    return-void
.end method

.method static synthetic a(Lorg/taptwo/android/widget/a;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/taptwo/android/widget/a;->c:Z

    return v0
.end method

.method private varargs b()Ljava/lang/Void;
    .locals 2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/taptwo/android/widget/a;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget v0, p0, Lorg/taptwo/android/widget/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/taptwo/android/widget/a;->b:I

    iget v0, p0, Lorg/taptwo/android/widget/a;->b:I

    iget-object v1, p0, Lorg/taptwo/android/widget/a;->a:Lorg/taptwo/android/widget/CircleFlowIndicator;

    invoke-static {v1}, Lorg/taptwo/android/widget/CircleFlowIndicator;->a(Lorg/taptwo/android/widget/CircleFlowIndicator;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/taptwo/android/widget/a;->c:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/taptwo/android/widget/a;->b:I

    return-void
.end method

.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lorg/taptwo/android/widget/a;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/taptwo/android/widget/a;->a:Lorg/taptwo/android/widget/CircleFlowIndicator;

    iget-object v1, p0, Lorg/taptwo/android/widget/a;->a:Lorg/taptwo/android/widget/CircleFlowIndicator;

    invoke-virtual {v1}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/taptwo/android/widget/CircleFlowIndicator;->a(Lorg/taptwo/android/widget/CircleFlowIndicator;Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lorg/taptwo/android/widget/a;->a:Lorg/taptwo/android/widget/CircleFlowIndicator;

    invoke-static {v0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->b(Lorg/taptwo/android/widget/CircleFlowIndicator;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lorg/taptwo/android/widget/a;->a:Lorg/taptwo/android/widget/CircleFlowIndicator;

    iget-object v1, v1, Lorg/taptwo/android/widget/CircleFlowIndicator;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lorg/taptwo/android/widget/a;->a:Lorg/taptwo/android/widget/CircleFlowIndicator;

    iget-object v1, p0, Lorg/taptwo/android/widget/a;->a:Lorg/taptwo/android/widget/CircleFlowIndicator;

    invoke-static {v1}, Lorg/taptwo/android/widget/CircleFlowIndicator;->b(Lorg/taptwo/android/widget/CircleFlowIndicator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/taptwo/android/widget/CircleFlowIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
