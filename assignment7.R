data("mtcars")

head(mtcars)

str(mtcars)

print(mtcars)

summary(mtcars)

plot(mtcars$wt, mtcars$mpg,
     main = "Car Weight vs. Fuel Efficiency",
     xlab = "Weight",
     ylab = "Miles Per Gallon",
     col = "blue",
     pch = 19)

class(mtcars)

methods("summary")
methods("plot")

s3_obj <- list(name = "Matthew", age = 29, GPA = 3.5)

class(s3_obj) <- "student_s3"

print.student_s3 <- function(x, ...) {
  cat("Student Name:", x$name, "\n")
  cat("Age:", x$age, "\n")
  cat("GPA:", x$GPA, "\n")
}

print(s3_obj)

setClass("student_s4",
         slots = c(
           name = "character",
           age = "numeric",
           GPA = "numeric"
         ))

s4_obj <- new("student_s4",
              name = "Matthew",
              age = 29,
              GPA =3.5)

setMethod("show", "student_s4",
          function(object) {
            cat("Student Name:", object@name, "\n")
            cat("Age:", object@age, "\n")
            cat("GPA:", object@GPA, "\n")
          })

show(s4_obj)
