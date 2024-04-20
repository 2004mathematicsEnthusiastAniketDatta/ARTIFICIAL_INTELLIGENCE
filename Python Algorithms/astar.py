import numpy as np
from sklearn.cluster import KMeans

class Star:
    def __init__(self, kmeans_model):
        self.kmeans_model = kmeans_model
        self.centroids = None

    def fit(self, X, y = None):
        self.centroids = {}
        for i in range(len(X)):
            nearest_centroid_idx = self.kmeans_model.labels_[i]
            if nearest_centroid_idx not in self.centroids:
                self.centroids[nearest_centroid_idx] = [X[i]]
            else:
                self.centroids[nearest_centroid_idx].append(X[i])

    def predict(self, X):
        labels = []
        for x in X:
            nearest_centroid_idx = self.kmeans_model.labels_[np.argmin([np.linalg.norm(x - c) for c in list(self.centroids.values())[0]])]
            labels.append(nearest_centroid_idx)
        return labels

# Example usage:
kmeans = KMeans(n_clusters=3, random_state=0).fit(X)
star = Star(kmeans_model=kmeans)
star.fit(X)
y_pred = star.predict(new_data)