.class Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;
.super Landroid/os/AsyncTask;
.source "CircleFlowIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/taptwo/android/widget/CircleFlowIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeTimer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private _run:Z

.field final synthetic this$0:Lorg/taptwo/android/widget/CircleFlowIndicator;

.field private timer:I


# direct methods
.method private constructor <init>(Lorg/taptwo/android/widget/CircleFlowIndicator;)V
    .locals 1
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->this$0:Lorg/taptwo/android/widget/CircleFlowIndicator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->timer:I

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->_run:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/taptwo/android/widget/CircleFlowIndicator;Lorg/taptwo/android/widget/CircleFlowIndicator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;-><init>(Lorg/taptwo/android/widget/CircleFlowIndicator;)V

    return-void
.end method

.method static synthetic access$000(Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 348
    iget-boolean v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->_run:Z

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 348
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 360
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->_run:Z

    if-eqz v1, :cond_1

    .line 363
    const-wide/16 v1, 0x1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 365
    iget v1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->timer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->timer:I

    .line 368
    iget v1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->timer:I

    iget-object v2, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->this$0:Lorg/taptwo/android/widget/CircleFlowIndicator;

    iget v2, v2, Lorg/taptwo/android/widget/CircleFlowIndicator;->fadeOutTime:I

    if-ne v1, v2, :cond_0

    .line 370
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->_run:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 377
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 348
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 382
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->this$0:Lorg/taptwo/android/widget/CircleFlowIndicator;

    iget-object v1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->this$0:Lorg/taptwo/android/widget/CircleFlowIndicator;

    invoke-virtual {v1}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    #setter for: Lorg/taptwo/android/widget/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;
    invoke-static {v0, v1}, Lorg/taptwo/android/widget/CircleFlowIndicator;->access$202(Lorg/taptwo/android/widget/CircleFlowIndicator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 384
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->this$0:Lorg/taptwo/android/widget/CircleFlowIndicator;

    #getter for: Lorg/taptwo/android/widget/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->access$200(Lorg/taptwo/android/widget/CircleFlowIndicator;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->this$0:Lorg/taptwo/android/widget/CircleFlowIndicator;

    iget-object v1, v1, Lorg/taptwo/android/widget/CircleFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 385
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->this$0:Lorg/taptwo/android/widget/CircleFlowIndicator;

    iget-object v1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->this$0:Lorg/taptwo/android/widget/CircleFlowIndicator;

    #getter for: Lorg/taptwo/android/widget/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lorg/taptwo/android/widget/CircleFlowIndicator;->access$200(Lorg/taptwo/android/widget/CircleFlowIndicator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/taptwo/android/widget/CircleFlowIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 386
    return-void
.end method

.method public resetTimer()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->timer:I

    .line 356
    return-void
.end method
