-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2022 at 02:39 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `allocate_classrooms`
--

CREATE TABLE `allocate_classrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` time NOT NULL,
  `to` time NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `course_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `department_id`, `semester_id`, `course_code`, `course_name`, `credit`, `description`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'eeeeeee', 'eeeeeeee', 1, 'eeeeeeeeeeeeee', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_assign_to_teachers`
--

CREATE TABLE `course_assign_to_teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `credit_took` int(11) NOT NULL,
  `unassigned_course_id` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_code`, `department_name`, `created_at`, `updated_at`) VALUES
(1, 'ttttt', 'yyyyyy', '2022-05-25 18:53:20', '2022-05-25 18:53:20');

-- --------------------------------------------------------

--
-- Table structure for table `enroll_in_courses`
--

CREATE TABLE `enroll_in_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `unassigned_course_id` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enroll_in_courses`
--

INSERT INTO `enroll_in_courses` (`id`, `student_id`, `course_id`, `unassigned_course_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_08_15_070104_create_departments_table', 1),
(2, '2020_08_15_085426_create_semesters_table', 1),
(3, '2020_08_15_090442_create_courses_table', 1),
(4, '2020_08_15_164500_create_teachers_table', 1),
(5, '2020_08_16_021937_create_course_assign_to_teachers_table', 1),
(6, '2020_08_16_144014_create_students_table', 1),
(7, '2020_08_17_013520_create_rooms_table', 1),
(8, '2020_08_17_014149_create_allocate_classrooms_table', 1),
(9, '2020_08_17_065045_create_enroll_in_courses_table', 1),
(10, '2020_08_17_093541_create_results_table', 1),
(11, '2020_10_21_155900_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `enroll_in_courses_id` bigint(20) UNSIGNED NOT NULL,
  `grade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_id`, `course_id`, `enroll_in_courses_id`, `grade`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 'gooog', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(10) UNSIGNED NOT NULL,
  `semester_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `semester_name`, `created_at`, `updated_at`) VALUES
(1, 'test', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year(4) NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `student_reg_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_name`, `email`, `contact_no`, `address`, `year`, `department_id`, `student_reg_no`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@gmail.com', '012333333333', 'eeeeee', 2014, 1, 'dddd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_to_be_taken` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `department_id`, `teacher_name`, `address`, `email`, `contact_no`, `designation`, `credit_to_be_taken`, `created_at`, `updated_at`) VALUES
(1, 1, 'ahmed', 'ihnasia\r\nihnasia', 'admin@gmail.com', '010252525225', 'Professor', 1020120, '2022-05-25 21:20:54', '2022-05-25 21:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$LuLMD0B8/ATV.nZDj.a7Z.axDlotEcj5cbiYChaTZ9kHnHA596L3a', 'V4AOWsJQySHlrAaMeesfkHKPnnfr0iwon1qCIJ1A5Yqdv6hHHXf4KfIfMQNN', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allocate_classrooms`
--
ALTER TABLE `allocate_classrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `allocate_classrooms_department_id_foreign` (`department_id`),
  ADD KEY `allocate_classrooms_course_id_foreign` (`course_id`),
  ADD KEY `allocate_classrooms_room_id_foreign` (`room_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_department_id_foreign` (`department_id`),
  ADD KEY `courses_semester_id_foreign` (`semester_id`);

--
-- Indexes for table `course_assign_to_teachers`
--
ALTER TABLE `course_assign_to_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_assign_to_teachers_department_id_foreign` (`department_id`),
  ADD KEY `course_assign_to_teachers_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enroll_in_courses`
--
ALTER TABLE `enroll_in_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enroll_in_courses_student_id_foreign` (`student_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_student_id_foreign` (`student_id`),
  ADD KEY `results_course_id_foreign` (`course_id`),
  ADD KEY `results_enroll_in_courses_id_foreign` (`enroll_in_courses_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_department_id_foreign` (`department_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_department_id_foreign` (`department_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allocate_classrooms`
--
ALTER TABLE `allocate_classrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_assign_to_teachers`
--
ALTER TABLE `course_assign_to_teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enroll_in_courses`
--
ALTER TABLE `enroll_in_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allocate_classrooms`
--
ALTER TABLE `allocate_classrooms`
  ADD CONSTRAINT `allocate_classrooms_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `allocate_classrooms_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `allocate_classrooms_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `courses_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `course_assign_to_teachers`
--
ALTER TABLE `course_assign_to_teachers`
  ADD CONSTRAINT `course_assign_to_teachers_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `course_assign_to_teachers_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `enroll_in_courses`
--
ALTER TABLE `enroll_in_courses`
  ADD CONSTRAINT `enroll_in_courses_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `results_enroll_in_courses_id_foreign` FOREIGN KEY (`enroll_in_courses_id`) REFERENCES `enroll_in_courses` (`id`),
  ADD CONSTRAINT `results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
