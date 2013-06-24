.class public Lcom/zhangdan/app/shake/ShakeManager;
.super Ljava/lang/Object;
.source "ShakeManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final SPEED_SHRESHOLD:I = 0xbb8

.field private static final UPTATE_INTERVAL_TIME:I = 0x64

.field private static final VIBRATE_TIME:[J


# instance fields
.field private lastUpdateTime:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mContext:Landroid/content/Context;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastShakeTime:J

.field private mOnShakeListener:Lcom/zhangdan/app/shake/OnShakeListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zhangdan/app/shake/ShakeManager;->VIBRATE_TIME:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/zhangdan/app/shake/ShakeManager;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/zhangdan/app/shake/ShakeManager;->init()V

    .line 50
    return-void
.end method

.method private doVibrate()V
    .locals 4

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/app/shake/ShakeManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/zhangdan/app/shake/ShakeManager;->VIBRATE_TIME:[J

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lcom/zhangdan/app/shake/ShakeManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/zhangdan/app/shake/ShakeManager;->VIBRATE_TIME:[J

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 154
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mSensor:Landroid/hardware/Sensor;

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mVibrator:Landroid/os/Vibrator;

    .line 61
    iget-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    goto :goto_0
.end method

.method private isKeyguardRestricted()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mContext:Landroid/content/Context;

    .line 83
    iput-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mSensor:Landroid/hardware/Sensor;

    .line 84
    iput-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 85
    iput-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mVibrator:Landroid/os/Vibrator;

    .line 86
    iput-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 87
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 160
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 20
    .parameter "event"

    .prologue
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 108
    .local v2, currentUpdateTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zhangdan/app/shake/ShakeManager;->lastUpdateTime:J

    move-wide/from16 v16, v0

    sub-long v11, v2, v16

    .line 110
    .local v11, timeInterval:J
    const-wide/16 v16, 0x64

    cmp-long v16, v11, v16

    if-gez v16, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/zhangdan/app/shake/ShakeManager;->lastUpdateTime:J

    .line 115
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v13, v16, v17

    .line 116
    .local v13, x:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v14, v16, v17

    .line 117
    .local v14, y:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v15, v16, v17

    .line 119
    .local v15, z:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/shake/ShakeManager;->lastX:F

    move/from16 v16, v0

    sub-float v4, v13, v16

    .line 120
    .local v4, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/shake/ShakeManager;->lastY:F

    move/from16 v16, v0

    sub-float v5, v14, v16

    .line 121
    .local v5, deltaY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/shake/ShakeManager;->lastZ:F

    move/from16 v16, v0

    sub-float v6, v15, v16

    .line 123
    .local v6, deltaZ:F
    move-object/from16 v0, p0

    iput v13, v0, Lcom/zhangdan/app/shake/ShakeManager;->lastX:F

    .line 124
    move-object/from16 v0, p0

    iput v14, v0, Lcom/zhangdan/app/shake/ShakeManager;->lastY:F

    .line 125
    move-object/from16 v0, p0

    iput v15, v0, Lcom/zhangdan/app/shake/ShakeManager;->lastZ:F

    .line 126
    mul-float v16, v4, v4

    mul-float v17, v5, v5

    add-float v16, v16, v17

    mul-float v17, v6, v6

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    long-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    const-wide v18, 0x40c3880000000000L

    mul-double v9, v16, v18

    .line 130
    .local v9, speed:D
    invoke-direct/range {p0 .. p0}, Lcom/zhangdan/app/shake/ShakeManager;->isKeyguardRestricted()Z

    move-result v16

    if-nez v16, :cond_0

    .line 134
    const-wide v16, 0x40a7700000000000L

    cmpl-double v16, v9, v16

    if-ltz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/shake/ShakeManager;->mOnShakeListener:Lcom/zhangdan/app/shake/OnShakeListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 135
    const-string v16, "ShakeListener"

    const-string v17, "shake event occure"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 137
    .local v7, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zhangdan/app/shake/ShakeManager;->mLastShakeTime:J

    move-wide/from16 v16, v0

    sub-long v16, v7, v16

    const-wide/16 v18, 0x3e8

    cmp-long v16, v16, v18

    if-ltz v16, :cond_0

    .line 139
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/zhangdan/app/shake/ShakeManager;->mLastShakeTime:J

    .line 140
    invoke-direct/range {p0 .. p0}, Lcom/zhangdan/app/shake/ShakeManager;->doVibrate()V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/shake/ShakeManager;->mOnShakeListener:Lcom/zhangdan/app/shake/OnShakeListener;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/zhangdan/app/shake/OnShakeListener;->onShake()V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 79
    :cond_0
    return-void
.end method

.method public setOnShakeListener(Lcom/zhangdan/app/shake/OnShakeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/zhangdan/app/shake/ShakeManager;->mOnShakeListener:Lcom/zhangdan/app/shake/OnShakeListener;

    .line 101
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/zhangdan/app/shake/ShakeManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/zhangdan/app/shake/ShakeManager;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 71
    :cond_0
    return-void
.end method
