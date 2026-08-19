import tensorflow as tf
import os

gpus = tf.config.list_physical_devices("GPU")
print(f"TensorFlow GPUs detected: {gpus}")

if os.environ.get("REQUIRE_GPU", "0") == "1" and not gpus:
    raise RuntimeError("GPU is required but TensorFlow detected no GPU")

(x_train, y_train), (x_test, y_test) = tf.keras.datasets.cifar10.load_data()
x_train, x_test = x_train / 255.0, x_test / 255.0

model = tf.keras.Sequential([
    tf.keras.layers.Conv2D(32, 3, activation="relu", input_shape=(32, 32, 3)),
    tf.keras.layers.MaxPooling2D(),
    tf.keras.layers.Conv2D(64, 3, activation="relu"),
    tf.keras.layers.MaxPooling2D(),
    tf.keras.layers.Flatten(),
    tf.keras.layers.Dense(64, activation="relu"),
    tf.keras.layers.Dense(10, activation="softmax"),
])

model.compile(optimizer="adam",
              loss="sparse_categorical_crossentropy",
              metrics=["accuracy"])

epochs = int(os.environ.get("EPOCHS", 3))
model.fit(x_train, y_train, epochs=epochs, validation_data=(x_test, y_test))

export_path = "/app/output/cifar10_model/1"
model.export(export_path)
print(f"모델 저장 완료: {export_path}")